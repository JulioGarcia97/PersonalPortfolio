10.times do |blog|
	Blog.create!(
		title: "This is a post that comes from de seed file #{blog}",
		body: 'Learning how to generated post with the seeds file'
		)
end

puts '10 blog post created'

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: '5'
		)
end

puts '5 skills created'

9.times do |portfolio|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio}",
		subtitle: 'My great service',
		body: 'Raw denim lyft mlkshk truffaut, messenger bag tousled kickstarter authentic drinking vinegar. Fap lumbersexual chillwave, forage neutra glossier sartorial food truck echo park cornhole. Marfa mumblecore live-edge, actually dreamcatcher ethical godard listicle farm-to-table put a bird on it umami ennui. Kinfolk +1 jean shorts, stumptown helvetica paleo schlitz. Health goth bitters 8-bit, enamel pin wayfarers williamsburg knausgaard.',
		main_image: 'http://placehold.it/600x400',
		thumb_image: 'http://placehold.it/350x200'
		)
end

puts '9 portfolio items'