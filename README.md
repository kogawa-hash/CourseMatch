# CourseMatch App built by SwiftUI

Entered users can see other students' fall and spring schedules that creates a school-wise engagement. 

TabforView: This is the front page that includes the creation of a tab-based navigation system with a searchable contact list. The body property defines the main content of the view, organized into a TabView that provides tab-based navigation. Each tab contains different content, allowing users to switch between views seamlessly.

ContentView: This is a scond page with login username and password that handles user input and conditional navigation based on authentication results. A NavigationView encapsulates the entire content, allowing for navigation to other views in the app. Inside this navigation view, a ZStack is used to layer a linear gradient background and a vertical stack (VStack) that arranges the login form elements vertically. The form includes two custom text fields: one for the username (UsernameTextField) and another for the password (PasswordSecureField).

DetailView: This is where users are presented with a detailed and interactive view of a contact's information and course enrollment for different terms. The main content of DetailView is arranged using a ZStack, which overlays components on top of a custom gradient background provided by the SpringTerm view.

Contact: Manually inputted user information. 

