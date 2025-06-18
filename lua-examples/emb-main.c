#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
#include <stdio.h>

// gcc -o run emb-main.c -I/usr/include/lua5.3 -llua5.3 -lm -ldl

// A C function callable from Lua
int recieveFunc(lua_State *L) {
    const char *msg = lua_tostring(L, 1);
    printf("C's recieveFunc received: %s\n", msg);
    return 0;
}

int main(void) {
    lua_State *L = luaL_newstate();      // Create new Lua state
    luaL_openlibs(L);                    // Open Lua standard libraries

    // Register a global C function in Lua
    lua_register(L, "recieveFunc", recieveFunc);

    // Set a global Lua variable from C
    lua_pushstring(L, "Haskell is not fun");
    lua_setglobal(L, "STATEMENT");
 
    // Run external Lua script
    if (luaL_dofile(L, "emb-script.lua") != LUA_OK) {
        fprintf(stderr, "Lua error: %s\n", lua_tostring(L, -1));
        lua_pop(L, 1);  // Remove error message
    }

    // Call Lua's add(a, b) function from C
    lua_getglobal(L, "DoMath");
    lua_pushnumber(L, 5);
    lua_pushnumber(L, 7);
    if (lua_pcall(L, 2, 1, 0) == LUA_OK) {
        printf("DoMath(5, 7) = %f\n", lua_tonumber(L, -1));
        lua_pop(L, 1); // Remove result
    } else {
        fprintf(stderr, "Error calling 'add': %s\n", lua_tostring(L, -1));
        lua_pop(L, 1);
    }

    lua_close(L);
    return 0;
}
