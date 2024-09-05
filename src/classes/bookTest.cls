/**
 * Created by ElMehdi on 03/09/2024.  not done
 */

@IsTest
private class bookTest {
    // tests for the BookDetail method (3 tests)
    /*@IsTest
    static void bookDetailTest1() {
        Book bookJohn = new Book('Apex Basics','John Doe',2023);
        String result = bookJohn.bookDetails();
        System.assertEquals('Book: Apex Basics, Author: John Doe, Year: 2023', result, 'assert msg');
    }*/
   /* @IsTest
    static void bookDetailTest2() {
        Book bookJane = new Book('Salesforce Guide','Jane Smith',2021);
        String result = bookJane.bookDetails();
        System.assertEquals('Book: Salesforce Guide, Author: Jane Smith, Year: 2021', result, 'assert msg');
    }*/
    /*@IsTest
    static void bookDetailTest3() {
        Book bookAlex = new Book('Coding 101','Alex Roe',2020);
        /*    in case their just the default constructor (empty)
        bookAlex.setTitle('Coding 101');
        bookAlex.setAuthor('Alex Roe');
        bookAlex.setYearPublished(2020);

        String result = bookAlex.bookDetails();
        System.assertEquals('Book: Coding 101, Author: Alex Roe, Year: 2020', result, 'assert msg');
    }
    //test for the bookPublishTimeLessThan5 method :3tests
    @IsTest
    static void bookPublishTimeLessThan5Test1(){
        Book book1 = new Book('book1','author1',2023);
        Boolean state = book1.bookPublishTimeLessThan5();
        System.assert(state,'2023 is between 2019 and 2024(2024 excluded) so true');
    }
    @IsTest
    static void bookPublishTimeLessThan5Test2(){
        Book book1 = new Book('book1','author1',2018);
        Boolean state = book1.bookPublishTimeLessThan5();
        System.assert(state,'2018 is between 2019 and 2024(2024 excluded) so true');
    }
    /*@IsTest
    static void bookPublishTimeLessThan5Test3(){
        Book book1 = new Book('book1','author1',2016);
        Boolean state = book1.bookPublishTimeLessThan5();
        System.assertEquals(false,state,'2016 is not between 2019 and 2024(2024 excluded) so false');
    }*/

    // TESTS FOR GETTER 11 && SETTERS
    /*@IsTest
    static void yearOfPublishGetSetTest(){
        Book book2025 = new Book('GetSetBookTest','M--DI',2000);
        book2025.setYearPublished(2019);
        System.assertEquals(book2025.getYearPublished(),2019,'should be true if return 2019');
    }*/


}