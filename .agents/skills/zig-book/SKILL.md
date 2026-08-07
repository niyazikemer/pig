---
name: zig-book-map
description: Routes conceptual Zig questions to the right chapter of "Introduction to Zig" (https://pedropark99.github.io/zig-book/). Use this whenever the user asks about a Zig pattern, idiom, concept, or "why is it done this way" — questions about the shape of something (buffer → writer → interface → flush), what a language feature is for, when to reach for one construct over another, or how a piece of the language fits together. Stdlib source shows how something is implemented; the book supplies the framing and the taught idiom, so pull the relevant chapter alongside a source read rather than answering from source alone. Do NOT use it for writing or debugging code, or for looking up a specific function signature.
---

# Zig book map

The user is learning Zig from this book, and reads stdlib source too. The two
answer different questions: `std/` shows how something is implemented, the book
shows what the pattern is and why. Keep reading source — just don't let a
constructor or field found there stand in for the idiom the book teaches, since
internals expose surfaces that aren't meant to be typed by hand.

## How to use this

1. Match the question to a chapter below.
2. Fetch that chapter's URL. Each chapter opens with a definition section — read
   that first; it usually contains the framing the user is asking for.
3. Answer from the chapter's prose, in the book's terms. Cite the chapter so the
   user can read it themselves.

If no chapter fits, say so and answer by whatever means suits — including
source. Only two or three chapters are ever plausible for a given question —
fetch the best one, not all of them.

Base URL: `https://pedropark99.github.io/zig-book/Chapters/`

## Chapters

| # | Chapter | Concepts it covers | Page |
|---|---------|--------------------|------|
| 1 | Introducing Zig | Language basics, syntax, how Zig compares to C/C++/Rust, `comptime` first look, assignments and constants | `01-zig-weird.html` |
| 2 | Control flow, structs, modules and types | `if`/`while`/`for`, `switch`, `defer`, structs and methods, modules and `@import`, type system basics | `03-structs.html` |
| 3 | Memory and Allocators | Stack vs heap, allocators, who allocates and who frees, `defer` for cleanup, memory lifetimes | `01-memory.html` |
| 4 | Project 1 — base64 encoder/decoder | Worked example: allocators and slices in practice | `01-base64.html` |
| 5 | Debugging Zig applications | Debug builds, debugger use, reading crashes and stack traces | `02-debugging.html` |
| 6 | Pointers and Optionals | Pointer kinds, slices vs pointers, optionals as the nullability model, `orelse`, unwrapping | `05-pointers.html` |
| 7 | Project 2 — HTTP server | Worked example: networking, sockets, request handling | `04-http-server.html` |
| 8 | Unit tests | `test` blocks, `std.testing`, assertions, running tests | `03-unittests.html` |
| 9 | Build System | `build.zig`, build modes, targets, linking, dependencies | `07-build-system.html` |
| 10 | Error handling and unions | Errors as values, error sets and unions, `try`, `catch`, `errdefer`, tagged unions | `09-error-handling.html` |
| 11 | Data Structures | `std.ArrayList`, hash maps, generic containers, `comptime` in data structures | `09-data-structures.html` |
| 12 | Project 3 — stack data structure | Worked example: building a generic container | `10-stack-project.html` |
| 13 | Filesystem and Input/Output | Files and directories, readers and writers, buffering, the writer interface, flushing, stdout/stdin | `12-file-op.html` |
| 14 | Zig interoperability with C | `@cImport`, calling C, C types and ABI, linking C libraries | `14-zig-c-interop.html` |
| 15 | Project 4 — image filter | Worked example: C interop and buffers | `13-image-filter.html` |
| 16 | Threads and parallelism | `std.Thread`, spawning and joining, mutexes, shared state | `14-threads.html` |
| 17 | Vectors and SIMD | `@Vector`, vectorized operations, SIMD basics | `15-vectors.html` |

Chapter numbers and page slugs don't line up — always take the slug from this
table rather than guessing from the chapter number.

## After answering

Stop at the concept. Don't continue into writing the user's implementation —
they type their own Zig.
