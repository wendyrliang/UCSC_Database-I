import java.sql.*;
import java.io.*;
import java.util.*;

/**
 * A class that connects to PostgreSQL and disconnects.
 * You will need to change your credentials below, to match the usename and password of your account
 * in the PostgreSQL server.
 * The name of your database in the server is the same as your username.
 * You are asked to include code that tests the methods of the NileBooksApplication class
 * in a similar manner to the sample RunStoresApplication.java program.
*/


public class RunNileBooksApplication
{
    public static void main(String[] args) {
    	
    	Connection connection = null;
    	try {
    	    //Register the driver
    		Class.forName("org.postgresql.Driver"); 
    	    // Make the connection.
            // You will need to fill in your real username
            // and password for your Postgres account in the arguments of the
            // getConnection method below.
            connection = DriverManager.getConnection(
                                                     "jdbc:postgresql://cmps180-db.lt.ucsc.edu/rliang4",
                                                     "rliang4",
                                                     "Hongshaorou13");
            
            if (connection != null)
                System.out.println("Connected to the database!");

            /* Include your code below to test the methods of the NileBooksApplication class
             * The sample code in RunStoresApplication.java should be useful.
             * That code tests other methods for a different database schema.
             * Your code below: */
			NileBooksApplication app = new NileBooksApplication(connection);

			/*
			 * Test for getAuthorsWithManyReviewedBooks method
			 * with the numberReviewedBooks argument set to 3.
			 */
			int numberReviewedBooks = 3;
			List<Integer> authors = app.getAuthorsWithManyReviewedBooks(numberReviewedBooks);
			System.out.println("Output of getAuthorsWithManyReviewedBooks when the parameter numberReviewedBooks is 3:");
			for (Integer author : authors)
				System.out.println(author);
			System.out.println("");

			/* 
			 * Test for the fixTotalOrdered method
			 * that fixes the totalOrdered values for the “bad books”
			 * published by the publisher whose publisherID is 94519.
			 */
			int publisherID = 94519;
			int numUpdated = app.fixTotalOrdered(publisherID);
			System.out.println("Output of fixTotalOrdered when thePublisherIDtoFix is 94519:");
			System.out.println(numUpdated);
			System.out.println("");

			/*
			 * Tests for the increasePublishersPrices method
			 */
			int thePublisherID = 98035;
			int theCount, result;
			/* Test 1: thePublisherID =  98035, theCount = 2 */
			theCount = 2;
			result = app.increasePublishersPrices(thePublisherID, theCount);
			System.out.println("increasePublishersPrices test 1 result:");
			System.out.println(result);
			/* Test 2: thePublisherID = 98035, theCount = 4 */
			theCount = 4;
			result = app.increasePublishersPrices(thePublisherID, theCount);
			System.out.println("increasePublishersPrices test 2 result:");
			System.out.println(result);

            connection.close();
            /*******************
            * Your code ends here */
            
    	}
    	catch (SQLException | ClassNotFoundException e) {
    		System.out.println("Error while connecting to database: " + e);
    		e.printStackTrace();
    	}
    	finally {
    		if (connection != null) {
    			// Closing Connection
    			try {
					connection.close();
				} catch (SQLException e) {
					System.out.println("Failed to close connection: " + e);
					e.printStackTrace();
				}
    		}
    	}
    }
}
