enum Status {available,borrowed}
class Book{
  String? title;
  String? author;
  String? isbn;
  bool stts;


  Book(this.title,this.author,this.isbn,this.stts);
  Book.empty():
        title="",
        author="",
        isbn="",
        stts=false;


  setTitle(String title)=>this.title=title;
  setAuthor(String author)=>this.author=author;
  setIsbn(String isbn)=>this.isbn=isbn;
  setStatus(bool statuss){if(statuss){
    this.stts=true;
  }
  }

  String? getTitle() => this.title;

  String? getAuthor()=> this.author;
  String? getIsbn()=>this.isbn;
  bool? get status=>this.stts;

  void diaplayInfo(){
    String? s="Title: $title\nAuthor: $author\nISBN: %s\nAvailability: $stts";
    print(s);
  }

}
class TextBook extends Book{
  TextBook(String? title,String? author,String? isbn,bool status):super(title,author,isbn,status);

}
void main() {
  Book textBook=new TextBook("Text Book 1","Yasantha","978-2-6778-21-123",true);
  textBook.diaplayInfo();
 
}
