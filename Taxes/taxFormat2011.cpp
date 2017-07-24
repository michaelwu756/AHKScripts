#include <iostream>
#include <fstream>
#include <string>
#include <queue>
#include <vector>
using namespace std;

vector<string> split(const string& str, const string& delim)
{
    vector<string> tokens;
    size_t prev = 0, pos = 0;
    do
    {
        pos = str.find(delim, prev);
        if (pos == string::npos)
			pos = str.length();
        string token = str.substr(prev, pos-prev);
        if (!token.empty())
			tokens.push_back(token);
        prev = pos + delim.length();
    }
    while (pos < str.length() && prev < str.length());
    return tokens;
}
int main () {
	queue<string> writeQueue;
	string line;
	string name="";
	ifstream source("src.txt");
	if (source.is_open())
	{
		while (getline (source,line))
		{
			if(line.find(" / ")!=string::npos)
			{
				name = split(line, " / ")[0];
			}
			else if (line.find(" Sale ")!=string::npos && line.find("Wash")==string::npos)
			{
				vector<string> v = split(line," ");
				writeQueue.push(name);
				writeQueue.push(v[1]);
				writeQueue.push(v[0]);
				writeQueue.push(v[4]);
				writeQueue.push(v[5]);
			}
		}
		source.close();
	}
	else cout << "Unable to open file"; 

	ofstream myfile;
	myfile.open("out.txt");
	while(!writeQueue.empty())
	{
		myfile << writeQueue.front()<<"\n";
		writeQueue.pop();
	}
	myfile.close();
}