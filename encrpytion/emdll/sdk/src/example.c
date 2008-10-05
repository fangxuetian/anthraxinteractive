
/*
 *
 * AutoIt v3 Plugin SDK - Example
 *
 * Copyright (C)1999-2006 Jonathan Bennett <jon at autoitscript com>
 *
 * example.c
 *
 */

#include <stdio.h>
#include <windows.h>

#include "AU3_Plugin_SDK\au3plugin.h"


/****************************************************************************
 * Function List
 *
 * This is where you define the functions available to AutoIt.  Including
 * the function name (Must be the same case as your exported DLL name), the
 * minimum and maximum number of parameters that the function takes.
 *
 ****************************************************************************/

/* "FunctionName", min_params, max_params */
AU3_PLUGIN_FUNC g_AU3_Funcs[] = 
{
	{"PluginMsgBox", 2, 2},
	{"PluginAdd", 2, 2}
};


/****************************************************************************
 * AU3_GetPluginDetails()
 *
 * This function is called by AutoIt when the plugin dll is first loaded to
 * query the plugin about what functions it supports.  DO NOT MODIFY.
 *
 ****************************************************************************/

AU3_PLUGINAPI int AU3_GetPluginDetails(int *n_AU3_NumFuncs, AU3_PLUGIN_FUNC **p_AU3_Func)
{
	/* Pass back the number of functions that this DLL supports */
	*n_AU3_NumFuncs	= sizeof(g_AU3_Funcs)/sizeof(AU3_PLUGIN_FUNC);

	/* Pack back the address of the global function table */
	*p_AU3_Func = g_AU3_Funcs;

	return AU3_PLUGIN_OK;
}


/****************************************************************************
 * DllMain()
 *
 * This function is called when the DLL is loaded and unloaded.  Do not 
 * modify it unless you understand what it does...
 *
 ****************************************************************************/

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


/****************************************************************************
 * PluginMsgBox()
 *
 * This is an example function that is a simple message box that takes 2 
 * parameters:  
 * 
 * PluginMsgBox("title", "text")
 *
 ****************************************************************************/

AU3_PLUGIN_DEFINE(PluginMsgBox)
{
	/* The inputs to a plugin function are:
	 *		n_AU3_NumParams		- The number of parameters being passed
	 *		p_AU3_Params		- An array of variant like variables used by AutoIt
	 *
	 * The outputs of a plugin function are:
	 *		p_AU3_Result		- A pointer to a variant variable for the result
	 *		n_AU3_ErrorCode		- The value for @Error
	 *		n_AU3_ExtCode		- The value for @Extended
	 */

	AU3_PLUGIN_VAR	*pMyResult;
	char			*szTitle, *szText;

	/* Get string representations of the two parameters passed - this works even if we
	 * were passed numbers or floats.
	 * Note: AU3_GetString() allocates some memory that we must manually free later
	 * using AU3_FreeString()
	 */
	szTitle	= AU3_GetString(&p_AU3_Params[0]);
	szText	= AU3_GetString(&p_AU3_Params[1]);

	/* Do the message box */
	MessageBox(NULL, szText, szTitle, MB_OK);

	/* Free temporary storage */
	AU3_FreeString(szTitle);
	AU3_FreeString(szText);
	
	/* Allocate and build the return variable */
	pMyResult = AU3_AllocVar();
	AU3_SetInt32(pMyResult, 0);
	

	/* Pass back the result, error code and extended code.
	 * Note: AutoIt is responsible for freeing the memory used in p_AU3_Result
	 */
	*p_AU3_Result		= pMyResult;
	*n_AU3_ErrorCode	= 0;
	*n_AU3_ExtCode		= 0;

	return AU3_PLUGIN_OK;
}


/****************************************************************************
 * PluginAdd()
 *
 * This is an example function that adds two int32 numbers together. 
 * Returns 1 and sets @error to 1 if the parmeters are not BASE numbers.
 * The AU3_GetInt32() function could of course auto-convert them but this
 * is just to show the use of AU3_GetType() :) 
 * 
 * PluginAdd(number1, number2)
 *
 ****************************************************************************/

AU3_PLUGIN_DEFINE(PluginAdd)
{
	AU3_PLUGIN_VAR	*pMyResult;
	int				nNum1, nNum2, nResult;

	/* Allocate the return variable */
	pMyResult = AU3_AllocVar();

	/* Check the base type of the parameters, if they are not both int32
	   then return 1 */
	if ( AU3_GetType(&p_AU3_Params[0]) != AU3_PLUGIN_INT32 || AU3_GetType(&p_AU3_Params[0]) != AU3_PLUGIN_INT32 )
	{
		AU3_SetInt32(pMyResult, 0);
		*p_AU3_Result		= pMyResult;
		*n_AU3_ErrorCode	= 1;		
		*n_AU3_ExtCode		= 0;
		
		return AU3_PLUGIN_OK;
	}

	/* Two parameters were numbers, get the values */
	nNum1	= AU3_GetInt32(&p_AU3_Params[0]);
	nNum2	= AU3_GetInt32(&p_AU3_Params[1]);

	nResult	= nNum1 + nNum2;
	AU3_SetInt32(pMyResult, nResult);
	
	/* Pass back the result, error code and extended code.
	 * Note: AutoIt is responsible for freeing the memory used in p_AU3_Result
	 */
	*p_AU3_Result		= pMyResult;
	*n_AU3_ErrorCode	= 0;
	*n_AU3_ExtCode		= 0;

	return AU3_PLUGIN_OK;
}

