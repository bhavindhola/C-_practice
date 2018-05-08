#include <iostream>
#include<stdio.h>

using namespace std;
class LinkedListADT
{
private:
    struct node
    {
        int item;
        node *next;
    };
    node* start;
    node* Search(int data)
    {
        node *t;
        if(start == NULL)
            return (NULL);
        t=start;
        while(t!=NULL)
        {
            if(t->item == data)
                return (t);
            t=t->next;
        }
        return(NULL);
    }
public:
    LinkedListADT()
    {
        start = NULL;
    }
    int countItems();
    void insertAtStart(int data);
    void insertAtLast(int data);
    void insertAfter(int currentData,int data);
    int searchItem(int data);
    int deleteItemFromStart();
    int deleteItemFromLast();
    int deleteCurrentItem(int currentData);
    void sortList();
    void editItem(int currentData,int newData);
    void viewList();
    int getFirstItem();
    int getLastItem();
    ~LinkedListADT()
    {
        while(start!=NULL){
            deleteItemFromStart();
        }
    }
};

void LinkedListADT::insertAtStart(int data)
{
        node *n = new node;
        n->item = data;
        n->next = start;
        start = n;

}
void LinkedListADT::insertAtLast(int data)
{
    node *t,*n = new node;
    n->item = data;
    n->next = NULL;
    if(start == NULL)
    {
        start = n;
    }
    else
    {
        t= start;
        while(t->next!=NULL)
            t=t->next;
            t->next = n;

    }
}
void LinkedListADT::insertAfter(int currentData,int data)
{
    node *t = Search(currentData);
    if(t==NULL)
        cout<<endl<<"No such value exist in the linkedlist<"<<endl;
    else{
        node *n = new node;
        n->item = data;
        n->next = t->next;
        t->next = n;
    }

}
int LinkedListADT:: deleteItemFromStart()
{
    if(start==NULL){
        cout<<"Underflow"<<endl;
        return(0);
    }

    node *r;
    r= start;
    start = start->next;
    delete (r);
    return(1);
}
int LinkedListADT::deleteItemFromLast()
{
    if(start==NULL){
        cout<<"underflow"<<endl;
    }
    if(start->next==NULL){
        delete (start);
        start = NULL;
        return(1);
    }
    node *t1,*t2;
    t1=t2=start;
    do{
        t2=t1;
        t1=t1->next;
    }
    while(t1->next!=NULL);
    t2->next = NULL;
    delete(t1);
    return(1);
}
int LinkedListADT::deleteCurrentItem(int currentData)
{
    node *t = Search(currentData);
    if(t==NULL){
        cout<<"Item not found"<<endl;
        return(0);
    }
    if(t->next==NULL){
        deleteItemFromLast();
        return(1);
    }
    while(t->next!=NULL){
        t->item = t->next->item;
        t=t->next;
    }
    deleteItemFromLast();
    return(1);
}
void LinkedListADT:: editItem(int currentData,int newData)
{
    node *t = Search(currentData);
    if(t==NULL)
        cout<<"Item not found"<<endl;
    else t->item = newData;
}
int LinkedListADT:: countItems()
{
    int Count = 0;
    node *t;
    t=start;
    while(t!=NULL){
        Count++;
        t=t->next;
    }
    return(Count);
}
int LinkedListADT:: getFirstItem()
{
    if(start==NULL){
        cout<<"list is empty"<<endl;
        return(-1);
    }
    return(start->item);
}
int LinkedListADT::getLastItem()
{
    node *t;
    if(start==NULL){
        cout<<"list is empty"<<endl;
        return(-1);
     }
     t=start;
     while(t->next!=NULL)
        t=t->next;
     return(t->item);

}
void LinkedListADT:: viewList()
{
        node *t;
        t=start;
    if(start==NULL)
        cout<<"list is empty"<<endl;
     else{
          while(t!=NULL){
               cout<<t->item<<" ";
                t=t->next;
                }
          }


}
int LinkedListADT::searchItem(int data)
{
node *t;
int node_number;
t=start;
while(t!=NULL){
        node_number++;
    if(t->item == data)
        return(node_number);
    t = t->next;
}
return(0);

}
void LinkedListADT:: sortList()
{
    node *t;
    int r,i,x,n;
    n = countItems();
    for(r =1;r<=n-1;r++){
            t=start;
        for(i=0;i<n-1-r;i++){
            if(t->item>t->next->item){
                x=t->item;
                t->item=t->next->item;
                t->next->item= x;
            }
            t=t->next;

        }
    }

}

int main()
{
    LinkedListADT l1;


    l1.insertAtStart(20);
    l1.insertAtStart(25);
    l1.insertAtStart(91);
    l1.insertAtStart(45);
    l1.insertAtLast(98);
    l1.insertAfter(91,55);


    l1.viewList();
    l1.sortList();
    cout<<endl;
    l1.viewList();





    return 0;
}
