#include <iostream>
#include <fstream>
#include <string>
#include <deque>
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
	deque<string> writeQueue;
	string line;
	string name="";
	ifstream source("src2012.txt");
	if (source.is_open())
	{
		while (getline (source,line))
		{
			if(line.find(", ")!=string::npos)
			{
				vector<string> v = split(line,", ");
				name = v[0];
			}
			else if (line.find("Wash Sale Disallowed Loss")!=string::npos)
			{
				string entries[7]={"","","","","","",""};
				string wash = split(line, " ")[5];
				for(int i=6;i>=0;i--)
				{
					entries[i]=writeQueue.back();
					writeQueue.pop_back();
				}
				writeQueue.push_back("W");
				writeQueue.push_back("\n");
				writeQueue.push_back(entries[0]);
				writeQueue.push_back(entries[1]);
				writeQueue.push_back(entries[2]);
				writeQueue.push_back(entries[3]);
				writeQueue.push_back(entries[4]);
				writeQueue.push_back(entries[5]);
				writeQueue.push_back(wash);
				writeQueue.push_back(entries[6]);
			}
			else if (line.find("Sale ")!=string::npos)
			{
				vector<string> v = split(line," ");
				writeQueue.push_back(name);
				writeQueue.push_back("\n");
				writeQueue.push_back(v[0]);
				writeQueue.push_back(v[1]);
				writeQueue.push_back(v[4]);
				writeQueue.push_back(v[5]);
				writeQueue.push_back("\n");
			}
		}
		source.close();
	}
	else cout << "Unable to open file"; 

	ofstream myfile;
	myfile.open("out2012.txt");
	while(!writeQueue.empty())
	{
		myfile<<writeQueue.front();
		if (writeQueue.front()!="\n")
			myfile<<" ";
		writeQueue.pop_front();
	}
	myfile.close();
}