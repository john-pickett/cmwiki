# Summary
Charlotte Mason was a British educator during the late 1800s and early 1900s. Her teaching philosophy has inspired several current day home-school curriculums, based around the idea of "living books". The Charlotte Mason Community website was developed to provide the home-school community a place to share resources, compare notes, and meet other home-schooling parents.

# Creating Book Summaries
Much of the teaching in a CM-inspired curriculum revolves around the student reading and discussing books with their teacher/parent. (Lots of books. 40+ books per week by the time they're in high school.) As you might imagine, this can create an incredible amount of work for the parent, who has to be familiar with each book to discuss it. 

The core of the CM Community website is the ability of each user to create wiki-type book summaries, which then can be shared and used by other home-school parents - thus cutting the workload of any one parent by a huge margin.

# WYSIWYG Editor
Although we've used markdown renderers in other projects, we felt that, given the non-technical nature of the intended audience, a WYSIWYG editor would be more appropriate for this website. The CM Community website is using the <a href="https://trix-editor.org/" target="_blank">Trix Editor</a> to allow our users to easily create beautiful and intuitive book resources.

# Versioning

One aspect that we thought was very important in a community-driven website was the ability to see who made changes to the community resources, and the ability to change a resource back to a previous version if necessary. (We hope that vandalism will not occur on a home-schooling website, but given the nature of the internet, we felt it was best to be prepared.) 

With this end in mind, we added versioning for each book resource using <a href="https://github.com/airblade/paper_trail" target="_blank">Paper Trail</a>. Included on each resource/wiki page is a link to the history of the resource, which shows the previous versions as well who was responsible for each change. If a wiki is edited in an inappropriate way, we can quickly put it back to the previous version.

# Website Status 
As of May 2017, version 1.0 of the site is largely complete. The site is currently undergoing UX research and design, and we hope to have it live by June 2017.
