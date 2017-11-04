using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeStudentCourses
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void assignment1Button_Click(object sender, EventArgs e)
        {
            /*
             * Create a List of Courses (add three example Courses ...
             * make up the details).  Each Course should have at least two
             * Students enrolled in them.  Use Object and Collection
             * Initializers.  Then, iterate through each Course and print
             * out the Course's details and the Students that are enrolled in
             * each Course.
             */

            List<Courses> courses = new List<Courses>()
            {
                new Courses {Title = "Psychology", Number = 101, Students = new List<Student>()
                {new Student() { StudentId = 1, Name = "Joe Smith"},
                 new Student() { StudentId = 2, Name = "Jane Green"}
                }},
                new Courses {Title = "Anthropology", Number = 201, Students = new List<Student>()
                {new Student() {StudentId = 3, Name = "Brian Donovan"},
                 new Student() {StudentId = 4, Name = "Emily Glass"}
                }},
                new Courses {Title = "Western Civilization", Number = 301, Students = new List<Student>()
                {new Student() {StudentId = 5, Name = "Nathan White" },
                 new Student() {StudentId = 6, Name = "Tina Lane" }
                }},
            };

            foreach (Courses course in courses)
            {
                resultLabel.Text += String.Format("<br/>{0} - {1}", course.Number, course.Title);
                foreach (var student in course.Students)
                {
                    resultLabel.Text += String.Format("<br/>&nbsp;Student: {0} - {1}", student.StudentId, student.Name);
                }
                {

                }
            }
            
            }

        protected void assignment2Button_Click(object sender, EventArgs e)
        {
            /*
             * Create a Dictionary of Students (add three example Students
             * ... make up the details).  Use the StudentId as the 
             * key.  Each student must be enrolled in two Courses.  Use
             * Object and Collection Initializers.  Then, iterate through
             * each student and print out to the web page each Student's
             * info and the Courses the Student is enrolled in.
             */

            Courses course1 = new Courses() { Number = 301, Title = "Calculus II" };
            Courses course2 = new Courses() { Number = 201, Title = "Postcolonial Literature" };
            Courses course3 = new Courses() { Number = 101, Title = "Business Writing" };

            Dictionary<int, Student> students = new Dictionary<int, Student>()
            {
                {1, new Student {StudentId = 1, Name = "Joe Green", Courses = new List<Courses> {course1, course2} } },
                {2, new Student {StudentId = 2, Name = "Emily Glass", Courses = new List<Courses> {course2, course3} } },
                {3, new Student {StudentId = 3, Name = "Tom Olson", Courses = new List<Courses> {course1, course3} } },
            };

            foreach (var student in students)
            {
                resultLabel.Text += String.Format("<br/>Student: {0} - {1}", student.Value.StudentId, student.Value.Name);
                foreach (var course in student.Value.Courses)
                {
                    resultLabel.Text += String.Format("<br/>&nbsp;Course: {0} {1}", course.Number, course.Title);
                }
            }
        }

        protected void assignment3Button_Click(object sender, EventArgs e)
        {
            /*
           * We need to keep track of each Student's grade (0 to 100) in a 
           * particular Course.  This means at a minimum, you'll need to add 
           * another class, and depending on your implementation, you will 
           * probably need to modify the existing classes to accommodate this 
           * new requirement.  Give each Student a grade in each Course they
           * are enrolled in (make up the data).  Then, for each student, 
           * print out each Course they are enrolled in and their grade.
           */

            Student student = new Student();
            student.StudentId = 11;
            student.Name = "Emily Glass";
            student.Enrollments = new List<Enrollment>()
            {
                new Enrollment { Grade = 90, Course = new Courses {Number = 101, Title = "Psychology"} },
                new Enrollment { Grade = 85, Course = new Courses {Number = 201, Title = "Anthropology"} },
                new Enrollment { Grade = 95, Course = new Courses {Number = 301, Title = "Thermodynamics"} },

            };

            resultLabel.Text += String.Format("<br/>Student: {0} - {1}", student.StudentId, student.Name);
            foreach (var enrollment in student.Enrollments)
            {
                resultLabel.Text += String.Format("<br/>Enrolled in: {0} - Grade: {1}", enrollment.Course.Title, enrollment.Grade);
            }
        }

        
    }
    
}