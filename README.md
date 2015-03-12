# Rosie Agenda

Many local Toastmasters clubs use the web application provided by
[Toastmasters International](http://toastmasters.org) to run their
meetings. The [Free Toast Host](http://www.toastmastersclubs.org/)
application is easy to use and provides a place for members to sign
up to participate in meetings.

Before a meeting, the *Toastmaster of the Day* typically prints 
the meeting agenda to distribute to meeting attendees. The format
of the printed agenda at Free Toast Host
is quite useable, but some clubs prefer a 
different layout. *Rosie Agenda* automates the preparation of 
the agenda in any format you like.

### Ultimate Rosie Agenda

##### (not yet implemented)

> *Note:* This is the easiest user interface I could think
of – and is not yet implemented. Please [comment][issues]
if you have ideas to make this easier or better.

Ready to try *Rosie Agenda*? Follow the steps below. 

1. Create your own Rosie Agenda application at Heroku by
pressing this button: —Deploy to Heroku—
2. Visit the application you created.
3. The application will ask for a few things:
	* The address (URL) of your club's Free Toast Host site
	* The name of the member to log in as (*Please add a 
	special non-administrator/non-privileged user to your FTH site
	for this purpose.*)
	* A password to restrict access to the agenda-printing application
4. Any time you visit the application, you'll be presented with
the current agenda, ready to print.

If you have any difficulty, please report the problem on
our [Issues page][issues].

### current project status

> The ultimate Rosie Agenda sounds great. Until we get there,
here is the current state of the application.

1. Change the values at the top of `rosie_agenda.rb`
to reflect your club site address and user to log in as.
(*next: use environment variables*).
3. Run the script. The file `agenda.html` will be created
or overwritten.
(*next: include the date in the file name*)
4. Open `agenda.html` in your web browser and print.

[issues]: https://github.com/slothbear/rosie_agenda/issues
  "rosie_agenda issues page"
