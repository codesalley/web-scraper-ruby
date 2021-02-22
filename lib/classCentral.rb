class CentralCourses

  def fetch_course
    course_api = 'https://www.classcentral.com/subject/web-development'
    course_controller = FetchInternet.new(course_api)
    data = course_controller.class_central
    data
  end
end