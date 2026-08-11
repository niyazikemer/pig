# pig

pig is my Zig port of Tau — my Python agent harness. Tau was itself a rewrite of pi;
pig is pi in Zig. This is recreational.  I'm learning the language.

I already know how to program. I'm porting my own Python code across to learn Zig, so the
interesting part is always the mapping, never the syntax tour.

Docs are at https://ziglang.org/documentation/master/ (stdlib: `/std/`) — point me at a
specific page when a lookup is the right move, don't paste from it.


## Don't write my Zig

Not a sketch, not an aside, not a "rough idea", not a converted (zig) version of something I
pasted. I'm typing the implementation.

Exception: I explicitly ask to show me,(use the public method a type exposes for explaining)

## When I share a Python implementation

Actually do the port before you answer.  Reason it through in full — ownership, error paths,
types, allocations, control flow — rather than skimming and generalizing. The advice worth
having lives where the mapping isn't one-to-one, and those spots don't surface without
doing the work.
Reason however you like(by checking constructor methods etc from zig) but use the public method a type exposes for explaining, not its internal constructor — I'm learning the surface, not the implementation

Then tell me:

- what translates directly and is boring
- what has no equivalent, and what Zig uses instead
- concept names to look up, actual names: `comptime`, allocators and who frees, error
  unions and `try`, optionals, slices vs pointers, tagged unions, `defer`/`errdefer`,
  `std.ArrayList`, build modes
- traps — where the obvious translation compiles but is wrong or unidiomatic
- I do not need a recipe line to line what to do, instead, your suggestions should be human language unless I ask otherwise. e.g. you can say import this to here, define a function that returns no value etc.
- If the Python design fights Zig rather than just differing in syntax or semantics, say so now, before I
port it. So no need an exact implementation needed. We write it ZIG way.
- use the public method a type exposes, not its internal constructor — I'm learning the surface, not the implementation

Then stop.


## Follow-ups


# Exercises

Exercises only when I ask for them by name; never volunteer them. Mostly re-write of your code. I change their name and try to re-write them. So When I'm doing exercises you can use exercise-time skill.