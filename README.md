# [generator.h](https://github.com/Aleman778/website_generator/blob/main/generator.h)
                
It's a simple static site generator which can be included to provide an functions for generating static sites. For an example see the [demo.c](https://github.com/Aleman778/website_generator/blob/main/demo.c) file. And the result
from running that is the [generated.html](https://github.com/Aleman778/website_generator/blob/main/generated.html).

## Features
- Markdown parsing, generated in to DOM structure
- Generating HTML from DOM structure
- Single string template system
- More to come...

## Usage (WIP)
Main functions
```C
Dom read_markdown_file(const char* filename);

string generate_html_from_dom(Dom* dom);

string template_process_string(string source, int argc, string* args);
```
  
