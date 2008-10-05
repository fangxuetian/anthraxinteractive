

1. Edit the globl function list to add your functions.  

AU3_PLUGIN_FUNC g_AU3_Funcs[NUMFUNCS] = 
{
	{"PluginFunc1", 2, 2},
	{"PluginFunc2", 1, 1}
};

The format is
	"FunctionName", min params, max params.

When someone calls your functions the number of parameters are checked first, too many or too few and AutoIt
will throw and error.  With creative use the min and max values allow you to have a number of optional
parameters in your function.

NOTE: the FunctionName must match case exactly with the name you use in AU3_PLUGIN_DEFINE()


2. Create your plugin function like so:

AU3_PLUGIN_DEFINE(FunctionName)
{

	return AU3_PLUGIN_OK;
}

You can also return AU3_PLUGIN_ERR if you have a fatal error and want the script to immediately exit.


3. The inputs and outputs of the function are:

	/* The inputs to a plugin function are:
	 *		n_AU3_NumParams		- The number of parameters being passed
	 *		p_AU3_Params		- An array of variant like variables used by AutoIt
	 *
	 * The outputs of a plugin function are:
	 *		p_AU3_Result		- A pointer to a variant variable for the result
	 *		n_AU3_ErrorCode		- The value for @Error
	 *		n_AU3_ExtCode		- The value for @Extended
	 */


4. Passed variables (AU3_PLUGIN_VAR) are in a mini "variant" type.  

You can get the base type by using AU3_GetType() which returns:

#define AU3_PLUGIN_INT32		1				/* 32bit Integer */
#define AU3_PLUGIN_INT64		2				/* 64bit Integer */
#define AU3_PLUGIN_DOUBLE		3				/* Double float */
#define AU3_PLUGIN_STRING		4				/* String */
#define AU3_PLUGIN_HWND			5				/* Handle (Window) */

Use these functions to "Get" data from the variant into something more normal:

char *				AU3_GetString(const AU3_PLUGIN_VAR *pVar);
int					AU3_GetInt32(AU3_PLUGIN_VAR *pVar);
__int64				AU3_GetInt64(AU3_PLUGIN_VAR *pVar);
double				AU3_GetDouble(AU3_PLUGIN_VAR *pVar);
HWND				AU3_GethWnd(AU3_PLUGIN_VAR *pVar);

Conversion is automatic.  The only thing to note is that AU3_GetString() allocates some memory
which must be freed with AU3_FreeString() when you are done.

Use these functions to "Set" data in the variant:

void				AU3_SetInt32(AU3_PLUGIN_VAR *pVar, int nValue);
void				AU3_SetInt64(AU3_PLUGIN_VAR *pVar, __int64 n64Value);
void				AU3_SetDouble(AU3_PLUGIN_VAR *pVar, double fValue);
void				AU3_SethWnd(AU3_PLUGIN_VAR *pVar, HWND hWnd);



See the example functions for more help.