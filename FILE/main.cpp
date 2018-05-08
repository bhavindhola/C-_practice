#include <iostream>
#include<fstream>
#include<string.h>
#include<stdio.h>
using namespace std;

class Book
{

private:
    int bookid;
    char title[20];
    float price;
public:
    Book()
    {
        bookid =0;
        strcpy(title,"No Title");
        price = 0;
    }
    void getBookData()
    {
        cout<<"Enter the book ID, NAME and PRICE"<<endl;
        cin>>bookid;
        cin.ignore();
        cin.getline(title,19);
        cin>>price;

    }

    void showBookData()
    {
        cout<<bookid<<"  "<<title<<"  "<<price;
    }
    int storeBook();
    int viewAllBooks();
    void searchBook(char *t);
    void deleteBook(char *t);
    void updateBook(char *t);
};
void Book:: updateBook(char *t)
{
    fstream file;
    file.open("file1.dat",ios::in|ios::out|ios::ate|ios::binary);
    file.seekg(0);
    file.read((char*)this,sizeof(*this));
    while(!file.eof()){
        if(!strcmp(t,title)){
            getBookData();
            file.seekp(file.tellp()-sizeof(*this));
            file.write((char*)this,sizeof(*this));
        }
        file.read((char*)this,sizeof(*this));
    }
}
void Book::deleteBook(char *t)
{
    ifstream fin;
    ofstream fout;
    fin.open("file1.dat",ios::in|ios::binary);
    if(!fin)
    {
        cout<<endl<<"file not found";
    }
    else
    {
        fout.open("tempfile.dat",ios::out|ios::binary);
        fin.read((char*)this,sizeof(*this));
        while(!fin.eof())
        {
            if(strcmp(t,title))
                fout.write((char*)this,sizeof(*this));


                fin.read((char*)this,sizeof(*this));
        }
        fin.close();
        fout.close();
        remove("file1.dat");
        rename("tempfile.dat","file1.dat");
    }

}
void Book::searchBook(char *t)
{
    int counter = 0;
    ifstream fin;
    fin.open("file1.dat",ios::in|ios::binary);
    if(!fin)
    {
        cout<<endl<<"file not found";
    }
    else
    {
        fin.read((char*)this,sizeof(*this));
        while(!fin.eof())
        {
            if(!strcmp(t,title)){
                showBookData();
                counter++;
            }
                fin.read((char*)this,sizeof(*this));
        }
        if(counter==0)
            cout<<endl<<"Entered record does not exist"<<endl;
        fin.close();
    }
}
int Book::storeBook()
{
    if(bookid==0 && price==0){
        cout<<endl<<"Book data not found";
        return(0);
    }
    else{
        ofstream fout;
        fout.open("file1.dat",ios::app|ios::binary);
        fout.write((char*)this,sizeof(*this));
        fout.close();
        return(1);

    }


}
int Book::viewAllBooks()
{
    ifstream fin;
    fin.open("file1.dat",ios::in|ios::binary);
    if(!fin)
    {
        cout<<endl<<"file not found"<<endl;
        return(0);
    }
    else
    {
        fin.read((char*)this,sizeof(*this));
        while(!fin.eof())
        {
            showBookData();
            cout<<endl;
            fin.read((char*)this,sizeof(*this));
        }
        fin.close();
        return(1);

    }

}

int main()
{
    Book b1,b2;
    //b1.getBookData();
    //b1.showBookData();
    //b1.storeBook();
    //cout<<endl;


    //b1.viewAllBooks();
    //cout<<endl;
    //b1.searchBook("papa");
    //b1.deleteBook("dbd");
    b1.viewAllBooks();
    //b1.updateBook("bhavin");
    //b1.updateBook("dhola");
    //b1.updateBook("papa");
    return 0;

}


// file data copy from one to another file
/*void copyfile(char *f1, char *f2);
void copyfile(char *f1, char *f2)
{
    ifstream fin;
    ofstream fout;
    char ch;
    fin.open(f1);
    fout.open(f2);
    ch = fin.get();
    while(!fin.eof()){
        fout<<ch;
        ch=fin.get();
    }
    fin.close();
    fout.close();
}

int main()
{
   copyfile("Bhavin.txt","DHOLA.txt");
   cout<<"file copy is completed";
   return 0;
}*/
