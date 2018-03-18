<h2 align="center"> Boris Bikes </h2>
<h3 align="center"> The Best way to get about London</h3>

 <p align="center">  <a href='#scenario'>Scenario</a> |  <a href='#approach'>Approach</a>   |   <a href='#reflections'>Reflections</a> |
 <a href='#user_story'> User Stories</a> |  <a href='#use'>How to use</a>   |   <a href='#tech'>Tech</a>

## Scenario  <a name= "scenario"></a>

This was a project we did over 3 days in our first week at Makers.  

We have been asked to build a network of docking stations and bikes that anyone can use (see user stories below). We have built a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on). There's no interface, you can build the objects and simulate the setup on the command line. For further info see <a href='#user_story'> user stories</a>  (I've put them at the bottom since this being a learning project, what matters most is approach.)

This was our first time with a whole range of approaches: interpretating user stories, pairing, TDD, object oriented programmng.


## Approach <a name= "approach"> </a>

*All taken from my daily reflections from the week*

Throughout the week we paired with different people. Building on the product we built the day before, and sharing ideas. 
Over 3 days, I paired with @Edpe, @Elliewem and @AlexandraGF but also shared code with @Jenniferemshepperd. It was a really great way to spread learning and ideas, and different approaches to the problem. 

My main overall target after this week was to write ideas down more. As I found I could overload my head with thoughts and also pairs sometimes struggled to follow my thought process. After this week I brought in a pad of paper and dumped all my ideas on it. And this significantly raised my productivity and my ability to communicate ideas. 

#### Targets:
*Written at the start of the week in my journal*
- Learn how to use Rspec
- Investigate classes in Ruby (something we only touched on in the pre-course)
- Practise pairing and see how I can improve

## Reflections  <a name= "reflections"> </a>
*Written during and after the week, in my journal*

#### What Went well
- Pairing taught me alot, enabling me to compare approaches with other people 
- I made sure we had Lots of refactoring time to tidy up code, kept it clean
- Kept it slow and made sure we understood everything, rather than rushing to finish

#### Targets for next time
- Need to write ideas down, and break ideas down into steps so you can measure your progess and understanding.
- Designing and planning out code, to make sure that classes are not overly dependent. 
- Understanding stubbing and mocking Rspec

#### With more time I would have:
- Added Feature tests
- Read alot more about rspec in its docs and nd taken more time to experiment and play with it. 
- Added a van functionality that moves bikes about, and takes them to be repaired (this would be nice for users). 

## User stories <a name= "user_story"></a>

User Stories:

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to be able to return broken bikes and report them as broken

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

```

## How to use  <a name= "use"> </a>

To run it in the command line (as long as you have ruby installed)

```
git clone https://github.com/Tagrand/boris-bikes-et.git
```
Go into the directory in the command line
```
irb 
require './lib/bike.rb'
require './lib/docking_station.rb'
```
And have fun!

## Tech <a name= "tech"> </a>

Rspec, Ruby

## Acknowledgements

Thanks to all my pairs for a great week! And for @MakersAcademy for providing the challenge, and google, for listening to all my many questions.
