import 'book.dart';
import 'Library.dart';
void main(){
 Book Potter = Book ('Harry Potter', 'J.K. Rowling');
 Book sherlock = Book.withRating('Sherlock Holmes', 'Arthur Conan Doyle', 9.3);
 Book Hobbit = Book('The Hobbit', 'J.R.R. Tolkien');
 Hobbit.rating = 8.7;
 Hobbit.displayInfo();

 Library citylib = Library('Library city');
citylib.addBook(Potter);         // тут добавляем Harry Potter
citylib.addBook(sherlock); 
citylib.addBook(Hobbit);  // тут добавляем Sherlock Holmes
 
citylib.showBooks();
print('Total books in library: ${citylib.booksCount()}');
}