#include <iostream>

using namespace std;

class TwoWayStack
{
private:
    int capacity;
    int top_left;
    int top_right;
    int *ptr;
public:
    TwoWayStack(int cap)
    {
        capacity = cap;
        top_left = -1;
        top_right = capacity;
        ptr = new int[capacity];
    }
    ~TwoWayStack()
    {
        delete []ptr;
    }
    void pushLeft(int val);
    void pushright(int val);
    int popLeft();
    int popright();
    int pickLeft();
    int pickright();
    int isEmptyLeft();
    int isEmptyright();
    int isFull();


};
void TwoWayStack::pushLeft(int val)
{
    if(isFull()){
        cout<<"Stack overflow"<<endl;
    }
    else{
        top_left++;
        ptr[top_left] = val;
    }
}
void TwoWayStack::pushright(int val)
{
    if(isFull()){
        cout<<"Stack overflow"<<endl;
    }
    else{
        top_right--;
        ptr[top_right] = val;
    }
}

int TwoWayStack::popLeft()
{
    if(isEmptyLeft()){
        cout<<"Stack is underflow"<<endl;
        return (-1);
    }
    else{

        int val = ptr[top_left];
        top_left--;
        return(val);
    }
}
int TwoWayStack::popright()
{
    if(isEmptyright()){
        cout<<"Stack is underflow"<<endl;
        return (-1);
    }
    else{

        int val = ptr[top_right];
        top_right++;
        return(val);
    }
}
int TwoWayStack:: pickLeft()
{
    if(isEmptyLeft()){
        cout<<"stack is empty"<<endl;
        return (-1);
    }
    else{
        return(ptr[top_left]);
    }


}
int TwoWayStack:: pickright()
{
    if(isEmptyright()){
        cout<<"stack is empty"<<endl;
        return (-1);
    }
    else{
        return(ptr[top_right]);
    }


}
int TwoWayStack:: isEmptyLeft()
{
    if(top_left == -1)
        return (1);
    else
        return(0);
}
int TwoWayStack:: isEmptyright()
{
    if(top_right == capacity)
        return (1);
    else
        return(0);
}
int TwoWayStack::isFull()
{
    if(top_left+1 == top_right)
        return (1);
    else
        return(0);
}
int main()
{
    TwoWayStack s(11);
    s.pushLeft(55);
    s.pushright(100);
    s.pushLeft(125);
    s.pushright(45);
    s.pushright(77);
    s.pushLeft(44);
    cout<<s.pickright()<<endl;
    cout<<s.isEmptyright()<<endl;
    cout<<s.isFull()<<endl;
    cout<<s.popLeft()<<endl;
    cout<<s.pickLeft()<<endl;
    cout<<s.popright()<<endl;
    cout<<s.pickright()<<endl;
    return 0;
}
