---
title: Basic markdown
author: "Crony Akatsuki"
numbersections: true
autoEgnLabels: true
codeBlockCaptions: true
geometry:
- top=30mm
- left=20mm
- right=20mm
- bottom=30mm
header-includes: |
    \usepackage{float}
    \let\origfigure\figure
    \let\endorigfigure\endfigure
    \renewenvironment{figure}[1][2] {
        \expandafter\origfigure\expandafter[H]
    }   {
        \endorigfigure
    }
---

Heading =
=

Heading -
-

# Heading 1 hashtag

## Heading 2 hashtag

- dsmadp
+ ,člm,čl

* dsada

* First paragraph

  Continued. dasnod nj nonlo nsdol nasl

* Second paragraph. ndjlasnk  bvghv gfh vjh njbhg
  eight spaces:

    { code }

1. mdksm
1. njnkl
1. nnln

> nsjandj nunj njnjn nijn nmjnj nhbnh bnhuk b hunbjnbh 
hello world
>
> jonm kjn inijn injk onoolmo 

    print(hi)

~~~
print(hello)
~~~

```
printf(Baba)
```

<http://google.hr>

[Google](http://google.hr)

![Image](/home/ivica/Pictures/logo.jpg)

My name is *Crony* _Akatsuki_

I'm **very** __stupid__ ~~very~~

a^2^ * a~2~

***

---

___
\

What is the difference between `>>=` and `>>`?

Right   Left    Center
------- ------ ----------
     12   12       12
    123   123      132


---------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- ---------------------------
  First       row              12.0 Example of a row that
                                    spans multiple lines.

 Second       row               5.0 Here's another one. Note
                                    the blank line between
                                    rows.
---------------------------------------------------------------

| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
| 12    | 12   |   12    | 12     |
| 123   | 123  |  123    |  123   |
| 1     |   1  |   1     |   1    |

+---------------+------------------+---------------------+
| Fruit         | Price            | Advantages          |
+===============+==================+=====================+
| Bananas       | $1.34            | - built-in wrapper  |
|               |                  | - bright color      |
+---------------+------------------+---------------------+
| Bananas       | $1.34            | - built-in wrapper  |
|               |                  | - bright color      |
+---------------+------------------+---------------------+


