## Overview of Lua
## The Simplistic Embedding Language

---

### The Presentation 
#### Trent Braley covers:
* Origin of Lua ([0:25](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=25s))
* Language structures of Lua ([1:00](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=60s))
* General syntax example ([2:00](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=120s))

#### Steven Dindl covers:
- Lua's releases ([3:15](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=195s))
- Platforms using Lua ([4:22](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=262s))
- Lua Dialects ([5:22](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=322s))
- This repository's code examples 
    - Types ([6:20](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=380s))
    - Number type ([7:30](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=450s))
    - Tables ([8:45](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=525s))
    - Object oriented-programming ([10:00](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=600s))
    - C embedding ([11:10](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=670s))

#### Watch the presentation (13 minutes)
[![The Simplistic Embedding Language](https://img.youtube.com/vi/QQ7Gw4il9Ow/0.jpg)](https://www.youtube.com/watch?v=QQ7Gw4il9Ow)

#### View the slides (15 slides)
##### [PDF file](https://github.com/stevendindl/Lua-Presentation/raw/main/files/Lua_Presentation.pdf)

---

### Repository structure

```
Lua-Presentation/
├── .gitignore
├── readme.md
├── examples-ss/
│   ├── oop.lua
│   ├── tables.lua
│   └── types.lua
├── files/
│   └── Lua_Presentation.pdf
└── lua-examples/
    ├── demo.lua
    ├── emb-main.c
    ├── emb-script.lua
    ├── oop.lua
    ├── run
    ├── tables.lua
    └── types.lua
```

#### Directory descriptions:
- **examples-ss/**: Simpler versions of the some code in *lua-examples/*, used for screenshots displayed in the presentation
- **files/**: Contains the presentation slides PDF
- **lua-examples/**: All of the code examples shown in the presentation, most using IO to better showcase one element at a time when running the code
    - `demo.lua`:	Main syntax demo script ([Showcased by Trent](https://www.youtube.com/watch?v=QQ7Gw4il9Ow&t=120s))
    - `emb-main.c`:	C program demonstrating Lua embedding
    - `emb-script.lua`:	Lua script to be embedded in C
    - `run`:	Executable for `emb-main.c` (recompile if pulled)
    - `oop.lua`:	Demonstrates object-oriented programming in Lua
    - `tables.lua`:	Shows the various data structures table fill in Lua
    - `types.lua`:	Illustrates Lua's basic data types, with a focus on tables

---
###### [Explore more of my projects on my portfolio site](https://stevendindl.github.io/)

--- 