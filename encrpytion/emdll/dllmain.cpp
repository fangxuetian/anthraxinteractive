/* Replace "dll.h" with the name of your header */
#include "dll.h"
#include <windows.h>
#include <stdio.h>
#include <string>
#include <sstream>
#include <fstream>
#include <iostream>
#include "au3plugin.h"
using namespace std;
AU3_PLUGIN_FUNC g_AU3_Funcs[] = 
{
	{"sen", 2, 2},
	{"sde", 2, 2}
};
AU3_PLUGINAPI int AU3_GetPluginDetails(int *n_AU3_NumFuncs, AU3_PLUGIN_FUNC **p_AU3_Func)
{
	/* Pass back the number of functions that this DLL supports */
	*n_AU3_NumFuncs	= sizeof(g_AU3_Funcs)/sizeof(AU3_PLUGIN_FUNC);

	/* Pack back the address of the global function table */
	*p_AU3_Func = g_AU3_Funcs;

	return AU3_PLUGIN_OK;
}              

BOOL WINAPI DllMain(HANDLE hInst, ULONG ul_reason_for_call, LPVOID lpReserved)
{
    switch (ul_reason_for_call)
	{
		case DLL_PROCESS_ATTACH:
		case DLL_THREAD_ATTACH:
		case DLL_THREAD_DETACH:
		case DLL_PROCESS_DETACH:
			break;
    }
    return TRUE;
}
AU3_PLUGIN_DEFINE(sen)
{
    AU3_PLUGIN_VAR	*pMyResult;
    string pt;
    string lol;
    pt = AU3_GetString(&p_AU3_Params[0]);   
    lol = AU3_GetString(&p_AU3_Params[1]);
    string an ("9abcdefghijklmnopqrstuvwxyz| .=-\\)(*&^%{}$#@!~/+,'");
    an+=34;
    an+=":;><?[]_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678";
    string antemp ("");
    string a1("");
    string a2("");
    string ant("");
    char debug;
    for (int i=0;i<31;i++){
        if (i!=13){
        a1+=i;
        }
    }
    for (int i=127;i<255;i++){
        a2+=i;
    }
    antemp = an;
    an = "";
    an+=a1;
    an+=antemp;
    an+=a2;
    if (lol.size() > 0)
    {
       int place;
       for (int i = 0;i<(lol.size());i++){
           place = an.find(lol.substr(i,1));
           an.replace(place,1,""); 
       }
       ant = an.substr(0,35);
       ant+=lol;
       string temp("");
       temp.assign( an, an.length()-(an.length()-35), an.length() );
       ant+=temp;
       an = ant;
    }
    ofstream file;
    file.open("an.txt");
    file << an;
    file.close();
    string rt("");
    string rt1("");
    file.open("pt.size.txt");
    file << pt.size();
    file.close();
    for (int i=0;i<(pt.size());i++){
        file.open("loop.txt");
        file << i;
        file.close();
        string cl("");
        cl = pt.substr(i,1);
        int cp;
        cp = an.find(cl);
        int idk;
        idk = cp+1;
        if (cp==an.length()){
           rt+=an.substr(0,1);
        }else {
           idk = cp+1;
           cout <<"idk " << idk << "\n";
           string le("");
           le = an.substr(idk,1);
           cout <<"le " << le << "\n";
           file.open("le.txt",ios::app);
           file << le << "\n" << i;
           file.close();
           rt+=le;
        }
    }
    for (int i = 0;i<(rt.size());i++){
        string ctl("");
        int num;
        string temp("");
        ctl = rt.substr(i,1);
        if (rt1==""){
           num = an.find(ctl);
           num++;
           ostringstream oss;
           oss << num;
           temp = oss.str();
           rt1+=temp;
        }else{
           rt1+=" ";
           num = an.find(ctl);
           num++;
           ostringstream oss;
           oss << num;
           temp = oss.str();
           rt1+=temp;
        }
    }
    rt = rt1;
   	pMyResult = AU3_AllocVar();
	AU3_SetString(pMyResult, rt.data());
	*p_AU3_Result		= pMyResult;
	*n_AU3_ErrorCode	= 0;
	*n_AU3_ExtCode		= 0;

	return AU3_PLUGIN_OK;
}  
