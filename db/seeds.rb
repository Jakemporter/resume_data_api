# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(first_name: "John", last_name: "Smith", email: "John@example.com", password: "password", phone_number: "555-555-5555", short_bio:"A short bio", linkedin_url: "johnsmith1", twitter_handle: "johnnysmith", website_url: "john.com", online_resume_url: "john.resume.com", github_url: "johnsmith1", photo: "https://www.history.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTU3ODc5MDgzNDc5NjcyNTQz/portrait-of-john-smith.jpg")

User.create!(first_name: "Sally", last_name: "Smith", email: "Sally@example.com", password: "password", phone_number: "555-555-5555", short_bio:"CEO of Buffalo Wild Wings", linkedin_url: "sallysmith1", twitter_handle: "sallysmith", website_url: "sally.bdubs.com", online_resume_url: "sally.resume.com", github_url: "sallysmith1", photo: "https://media.bizj.us/view/img/929151/smithsallybuffalowildwings*1200xx2023-1138-0-103.png")

Skill.create!(name: "HTML", user_id: 1)
Skill.create!(name: "Good buffalo wings", user_id: 2)

Project.create!(name: "Website", description: "website about dogs", user_id: 1, url: "dogs.com")
Project.create!(name: "Buffalo Wild Wings", description: "website about wings", user_id: 2, url: "https://www.buffalowildwings.com/")

Experience.create!(start_date: "07/20/2019", end_date: "10/20/2020", job_title: "dog walker", company_name: "John's Dog's", details: "Dog walker", user_id: 1)
Experience.create!(start_date: "07/20/2005", end_date: "10/20/2020", job_title: "CEO", company_name: "Buffalo Wild Wings", details: "I made a business out of good chicken wings and sports", user_id: 2)

Education.create!(start_date: "06/20/16", end_date: "06/20/20", degree: "Bachelor of Arts", university_name: "Stanford", details: "degree in art", user_id: 1)
Education.create!(start_date: "04/23/1987", end_date: "10/23/1991", degree: "Bachelor of Chicken Wings", university_name: "Bdubs University", details: "degree in good chicken", user_id: 2)