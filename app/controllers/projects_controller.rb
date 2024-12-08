class ProjectsController < ApplicationController
  def index
    @experiences = Experience.includes(:projects).all

    render json: @experiences.map do |experience|
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
        end || [] # Ensure an empty array if no projects are found
      }
    end
  end
end
