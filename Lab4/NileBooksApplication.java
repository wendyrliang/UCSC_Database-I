import java.sql.*;
import java.util.*;

/**
 * The class implements methods of the NileBooks database interface.
 *
 * All methods of the class receive a Connection object through which all
 * communication to the database should be performed. Note: the
 * Connection object should not be closed by any method.
 *
 * Also, no method should throw any exceptions. In particular, in case
 * an error occurs in the database, then the method should print an
 * error message and call System.exit(-1);
 */

public class NileBooksApplication {

    private Connection connection;

    /*
     * Constructor
     */
    public NileBooksApplication(Connection connection) {
        this.connection = connection;
    }

    public Connection getConnection()
    {
        return connection;
    }

    /**
     * Takes as argument an integer called numberReviewedBooks.
     * Returns the authorID for each author in Authors that has at least numberReviewedBooks
     * different books that have at least one review.
     * If numberReviewedBooks is not positive, that's an error.
     */

    public List<Integer> getAuthorsWithManyReviewedBooks(int numberReviewedBooks)
    {
        List<Integer> result = new ArrayList<Integer>();

        if(numberReviewedBooks <= 0) {
            System.out.println("Error in getAuthorsWithManyReviewedBooks.");
            System.exit(-1);
        }

        try {
            String query = "SELECT authorID FROM Authors WHERE authorID IN " +
                                "(SELECT authorID FROM Books WHERE bookID IN " +
                                    "(SELECT bookID FROM Reviews GROUP BY bookID HAVING COUNT(reviewerID) >= 1)" +
                                "GROUP BY authorID HAVING COUNT(DISTINCT bookID) >= ?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, numberReviewedBooks);
            ResultSet rs = st.executeQuery();
            if(rs != null) {
                while(rs.next()) {
                    result.add(Integer.parseInt(rs.getString(1)));
                }
            }
            rs.close();
            st.close();
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            System.exit(-1);
        }

        return result;
    }


    /**
     * The fixTotalOrdered method has one integer argument, aPublisherIDtoFix, which is a publisherID.
     * fixTotalOrdered should change the totalOrdered values for each “bad book” that was published
     * by aPublisherIDtoFix, updating totalOrdered so that it is correct, i.e., so that it’s equal
     * to the sum of the quantity values for the Orders of that book.
     * fixTotalOrdered should return the number of bad books whose totalOrdered values were “fixed”.
     *
     * This method is relatively easy to write if you use the BadBookTotals view from Lab3, which has
     * been provided to you in the lab4_create.sql script for this assignment.
     */

    public int fixTotalOrdered(int aPublisherIDtoFix)
    {
        int numUpdated = 0;

        try {
            PreparedStatement st = connection.prepareStatement("UPDATE Books SET totalOrdered = BadBookTotals.badQuantitySum FROM BadBookTotals WHERE Books.publisherID = ? AND BadBookTotals.bookID = Books.bookID");
            st.setInt(1, aPublisherIDtoFix);
            numUpdated = st.executeUpdate();
            st.close();
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            System.exit(-1);
        }

        return numUpdated;
    }

    /**
     * increasePublishersPrices has two integer parameters, thePublisherID and theCount, and invokes
     * a stored function increasePricesFunction that you will need to implement and store in the database
     * according to the description in Lab4 assignment.
     *
     * The increasePublishersPrices method must only invoke the stored function increasePricesFunction,
     * which does all of the assignment work; do not implement the increasePublishersPrices method using
     * a bunch of SQL statements through JDBC.  However, increasePublishersPrices should check to see
     * whether theCount is positive, and report an error if it’s not.
     *
     * increasePublishersPrices should return the same integer result as the increasePricesFunction
     * stored function.
     */

    /*
     * Stored function increasePricesFunction not working properly
     * Cannot use input value to execute update
     */

    public int increasePublishersPrices(int thePublisherID, int theCount)
    {
        if(theCount <= 0) {
            System.out.println("Error in increasePublishersPrices.");
            System.exit(-1);
        }
        int storedFunctionResult = 0;

        try {
            CallableStatement st = connection.prepareCall("{CALL increasePricesFunction(?, ?)}");
            st.setInt(1, thePublisherID);
            st.setInt(2, theCount);
            storedFunctionResult = st.executeUpdate();
        } catch(SQLException e) {
            System.out.println(e.getMessage()) ;
            System.exit(-1);
        }

        return storedFunctionResult;
    }

};
