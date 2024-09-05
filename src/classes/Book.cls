/**
 * Created by ElMehdi on 03/09/2024. not done
 */

public with sharing class Book {
    /* attributes section */
    private Id id; //unique within SF but not in a custom object outside of sf
    private String title;
    private String author;
    private Integer yearPublished;

    /*constructor section*/

    public Book(Id id,String title, String author, Integer yearPublished) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.yearPublished = yearPublished;
    }

    /* getters setters section */
    //get id
    public Id getId(){ return id;}
    public void setId(Id id){this.id=id;}
    //get set Title
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    //get set Author
    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }
    //get set YearPublished
    public Integer getYearPublished() { return yearPublished; }
    public void setYearPublished(Integer yearPublished) { this.yearPublished = yearPublished; }


    /*Methods section*/
    //show detail book
    public String bookDetails(){
        return 'Book: '+title+', Author: '+author+', Year: '+yearPublished;
    }

    public Boolean bookPublishTimeLessThan5(){
        Boolean state = false;
        if(this.yearPublished>= Integer.valueOf(Date.today().year())-6)
        {state = true;}
        return state;
    }
}