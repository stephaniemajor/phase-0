<ul>
	<li>What does puts do?</li>
    <p> A puts prints the output result in a new line like   </p>
      <p> hello</p>
      <p> hello</p>
      <p> hello</p>

  <li>What is an integer?</li>
    <p>  An integer is a rounded number with no point. 0 is an integer but 0.0 is not.  </p>
  <li> What is a float? </li>
    <p>  A float is not an integer. It has a decimal. 0.0 is a float.  </p>
  <li>What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?</li>
    <p> A float is a number that has a decimal printed. The integer division is a division that has discarded the decimal, therefore, you see only the integer part. 10/3 = 3.33 this result is a float but if it was an integer division, you would see: 3   </p>
  <li>How does Ruby handle addition, subtraction, multiplication, and division of numbers?</li>
    <p>Like a calculator. Although with division, unless specifically mentioned, it will return an integer number (rounded down number)</p>
  <li>What are strings? </li>
    <p> A string is anything but a number on which you cannot do mathematical operations. It is always contained in between apostrophes. If a number is within apostrophes, this number is considered a string</p>
  <li>Why and when would you use strings?</li>
    <p>We use strings when we want to make a program work with words. In case of numbers converted in strings, it will make so that this number will never changes. </p>
  <li>What are local variables? </li>
    <p> A local variable lives inside a method (part of the body) and cannot leave it. You cannot call a local variable</p>
  <li>Why and when would you use local variables?</li>
    <p> It is useful because these local variables do not have access to my variables and cannot affect them</p>
  <li>How was this challenge? </li>
    <p> Scary at first, I remembered, seemingly, nothing </p>
  <li>Did you get a good review of some of the basics?</li>
    <p> I am afraid to say I feel I barely touched what we first learned for the interview</p>

<h4> Here are the results of the release 2 </h4>
def hours_in_year
  daysinyear=365
  hourinday=24
  daysinyear*hourinday
end

puts hours_in_year

def hours_in_year
  daysinyear=365
  hourinday=24
  daysinyear*hourinday
end
def hours_in_10_year
  hours_in_year*10
end  
def minutes_in_decade
  hours_in_10_year*60
end

puts minutes_in_decade

