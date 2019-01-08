CREATE FUNCTION increasePricesFunction
    (IN thePublisherID integer, IN theCount integer) RETURNS integer AS $$

DECLARE
    result integer := 0;
    bookid char := null;
    myrow Books%ROWTYPE;

BEGIN
    EXECUTE
        'SELECT bookID INTO TABLE Temp
        FROM Books
        WHERE publisherID = thePublisherID
        ORDER BY price DESC
        LIMIT theCount';

    UPDATE Books
    SET price = (CASE WHEN category = 'N' THEN price * 1.5
                      WHEN category = 'F' THEN price * 2.5
                END)
    FROM Temp
    WHERE Temp.bookID = Books.bookID;
    GET DIAGNOSTICS result = ROW_COUNT;

    DROP TABLE Temp;
END;

$$ LANGUAGE plpgsql
