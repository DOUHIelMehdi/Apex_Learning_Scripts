/**
 * Created by ElMehdi on 03/09/2024. not done
 */

public with sharing class Library {

    public List<Book> libraryList = new List<Book>();

    /*ADD BOOK WHILE VERIFYING THE ID IS UNIQUE*/
    //create a method for creating book on a loop + adding created book to the libraryList
        // CREATE A METHOD TO VERIFY IF THE ID IS UNIQUE
    private Boolean isUnique(Id bookId  ){
        for(Book theBook : libraryList ){
            if(theBook.getId() == bookId){
                return false; // id not unique need to generate a new one
            }
        }
        return true; // id is unique you can add the book
    }
        //adding book while calling the isUniqueId method
    public void addBookWhileIdIsUnique(List<Book> bookUserInput){
        for(Book book : bookUserInput){
            while (!isUnique(book.getId())){
                //generate a new id
                book.setId((Id)UUID.randomUUID().toString().substring(0,18));
            }
            libraryList.add(book);
            System.debug('book added : '+book.bookDetails());
        }
    }

    /* DELETING THE BOOK ITH ID */
    //create a method for deleting a specific book
    public void deleteBookFromList(Id bookId){
        for(Integer i =0; i< libraryList.size();i++){
            if(libraryList.get(i).getId()==bookId){
                libraryList.remove(i);
                break;
            }
        }
    }

    /*SHOW ALL BOOKS*/
    // create a method for viewing all books
    public void showAllBooks(){
        if(libraryList.isEmpty()){
            System.debug('your book list is empty !! ');
        }
        for(Book bookie : libraryList){
            System.debug('Title :'+bookie.getTitle() +' Author : ' + bookie.getAuthor() +' published in : '+ bookie.getYearPublished());
        }
    }


    /*UPDATE A SPECIFIC BOOK */
    //create a method for updating a book
    public void updateSpecificBook(Id bookId , String newTitle , String newAuthor , Integer newPublishedDate){
        Boolean bookExist = false;
        for(Book updatedBook : libraryList){
            if(updatedBook.getId() == bookId){
                bookExist = true;
                updatedBook.setTitle(newTitle);
                updatedBook.setAuthor(newAuthor);
                updatedBook.setYearPublished(newPublishedDate);
                System.debug('book with the '+bookId + ' updated with success with the new values ');
                break;
            }
        }
        if(!bookExist){
            System.debug('book with the '+bookId+ 'does not exist in the Library');
        }
    }

    //what's more?



}