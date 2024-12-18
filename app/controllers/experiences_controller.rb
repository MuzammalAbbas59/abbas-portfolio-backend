class ExperiencesController < ApplicationController
  def index
    # Fetch all experiences, including their associated projects
    @experiences = Experience.includes(:projects).all

    # Map the data to include experience details along with projects
    experiences =  @experiences.map do |experience|
      {
        id: experience.id,
        title: experience.title,
        description: experience.description,
        projects: experience.projects.map do |project|
          {
            id: project.id,
            title: project.title,
            description: project.description,
            link: project.link
          }
        end
      }
    end
    render json: experiences
  end
end
