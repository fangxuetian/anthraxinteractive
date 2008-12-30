/* Replace "dll.h" with the name of your header */
#include "dll.h"
#include <windows.h>
#include <stdio.h>
#include <string>
#include <sstream>
#include <fstream>
#include <iostream>
#include <string.h>
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
    string rt;
    string anm;
    string cl;
    int cp;
    pt = AU3_GetString(&p_AU3_Params[0]);   
    lol = AU3_GetString(&p_AU3_Params[1]);
    string an("9abcdefghijklmnopqrstuvwxyz| .=-\\)(*&^%{}$#@!~/+,'"":;><?[]_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678");
    string a1;
    string a2;
    for (int i=0;i<31;i++){
        if (i == 10){
           a1+=10;
           a1+=13;
        }else{
              if (i!=13){
                 a1+=i;
              }
        }
    }
    for (int i=127;i<255;i++){
           a2+=i;
    }
    anm = an;
    an = a1;
    an+=anm;
    an+=a2;
    for (int i=1;i<pt.size();i++){
        cl ="";
    }
   	pMyResult = AU3_AllocVar();
	AU3_SetString(pMyResult, rt.data());
	*p_AU3_Result		= pMyResult;
	*n_AU3_ErrorCode	= 0;
	*n_AU3_ExtCode		= 0;

	return AU3_PLUGIN_OK;
}
string a1g() {
       string a1gv;
       for (int i=0;i<31;i++){
           if (i == 10){
                a1gv+=10;
                a1gv+=13;
           }else{
                 if (i!=13){
                    a1gv+=i;
                 }
           }
       }
       return a1gv;
}
                
string a2g() {
       string a2gv;
       for (int i=127;i<255;i++){
           a2gv+=i;
       }
       return a2gv;
} 
