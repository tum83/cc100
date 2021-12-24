
# Table of Contents

-   [Prelude: systems](#orgc2c5ab6)
-   [System activities](#org1ef4d12)
-   [Examples for systems](#org6bac482)
-   [Ways to describe and manipulate systems](#orga73f81c)
    -   [Models/abstractions](#orgd9f68e8)
    -   [Stories/Narratives](#org40163a1)
    -   [Computer algorithms](#orgc4ec2ad)
    -   [Mathematical functions](#org15af929)
-   [Summary](#orgd93b93a)
-   [References](#org372e70b)



<a id="orgc2c5ab6"></a>

# Prelude: systems

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">System = a whole made up of several parts</td>
</tr>
</tbody>
</table>

![img](./img/system.png)

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">PART</th>
<th scope="col" class="org-left">STATE 1</th>
<th scope="col" class="org-left">STATE 2</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Boundary</td>
<td class="org-left">open</td>
<td class="org-left">closed</td>
</tr>


<tr>
<td class="org-left">Elements</td>
<td class="org-left">inside</td>
<td class="org-left">outside</td>
</tr>


<tr>
<td class="org-left">Relationships</td>
<td class="org-left">yes</td>
<td class="org-left">no</td>
</tr>


<tr>
<td class="org-left">Flow</td>
<td class="org-left">input</td>
<td class="org-left">output</td>
</tr>
</tbody>
</table>


<a id="org1ef4d12"></a>

# System activities

-   Move elements
-   Add/delete elements
-   Add/delete relationships
-   Transcend boundary


<a id="org6bac482"></a>

# Examples for systems

Your turn: fill in the details of these systems!

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">System</th>
<th scope="col" class="org-left">Boundary</th>
<th scope="col" class="org-left">Elements</th>
<th scope="col" class="org-left">Relationships</th>
<th scope="col" class="org-left">Flow</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Car</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">College</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Computer</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Cow</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Earth</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Nation</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Person</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Phone</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Schoology</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

Can you think of things that are not systems?


<a id="orga73f81c"></a>

# Ways to describe and manipulate systems

In this section we take a look at four different ways to describe
and manipulate systems. As an example, we use systems of financial
markets (Sallans et al, 2003)<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>.


<a id="orgd9f68e8"></a>

## Models/abstractions

The model below shows a system consisting of three elements (which
are systems themselves): a firm, a consumer market, and a financial
market.

![img](./img/markets.jpg)


<a id="org40163a1"></a>

## Stories/Narratives

This is the prose that explains the graphic model in more detail.

> "The model consists of two markets: a consumer market and a
> financial equities market. The consumer market simulates the
> manufacture of a product by production firms, and the purchase of
> the product by consumers. The financial market simulates trading of
> shares. The shares are traded by financial traders. The two markets
> are coupled: The financial traders buy and sell shares in the
> production firms, and the managers of firms may be concerned with
> their share price. The traders can use the performance of a firm in
> the consumer market in order to make trading decisions. Similarly,
> the production firms can potentially use positioning in product
> space and pricing to influence the decisions of financial traders."


<a id="orgc4ec2ad"></a>

## Computer algorithms

The article studies management compensation using a "discrete-time
agent-based economic model". The agent behavior is expressed
algorithmically as a sequence of possible actions. For example for
the production firm, the algorithm can be expressed as shown.

![img](./img/actions.png)


<a id="org15af929"></a>

## Mathematical functions

Rational agents are designed to maximize utility functions. An
example is the action-value or Q-function, which is "defined as the
expected discounted return conditioned on the current state and
action" (of the agent):

> \begin{equation}
>  Q^\pi = E[\sum_{\tau=1}^{\infty}
>          \gamma^{\tau-1}r_\tau|s_t = s, a_t = 1]
> \end{equation}


<a id="orgd93b93a"></a>

# Summary

-   Systems are everywhere (but not everything is a system)
-   Powerful concept with many applications ("[System sciences](https://en.wikipedia.org/wiki/System)")
-   Systems have: boundaries, elements, relationships, and flow
-   Systems can be described through models or stories
-   Computers are a special case of information system
-   Attributes related to system properties are called "systemic"


<a id="org372e70b"></a>

# References

Sallans, Pfister and Dorffner (December 15, 2003). A Simulation
Study of Managerial Compensation, OEFAI Neural Computation Group
Technical Report, Austrian Institute for Artificial Intelligence
[report]. URL: [ofai.at](https://ofai.at/papers/oefai-tr-2003-33.pdf).


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> Why this source? There is nothing special about the paper used -
I found it while looking for a good (visual) model of financial
markets. It is, however, interesting that the report contains all
four ways of describing systems - as good scientific articles
should!
