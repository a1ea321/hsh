/* user and group to drop privileges to */
static const char *user  = "alp";
static const char *group = "alp";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "gray",     /* after initialization */
	[INPUT] =  "#005577",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
