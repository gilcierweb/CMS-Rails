class Adm::Banner < ActiveRecord::Base

 mount_uploader :imagem, BannerUploader # Tells rails to use this uploader for this model.

 validates :titulo, presence: true # Make sure the owner's name is present.

# validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/,
#     message: "only allows letters" }
#   validates_format_of :imagem, :with => %r{\.(png|jpg|jpeg)$}i, :message => "whatever"
 # validates_inclusion_of :format, in: %w( jpg gif png ), message: "extension %{value} is not included in the list"
  # validates_format_of  :imagem, :content_type,
     # :with => /^image/, :message =>"must be a jpg,png or gif file type"

     #VALID_IMAGE_REGEX =  /\.(gif|jpg|png)/i
     #validates :imagem, format: { with: => /\.(gif|jpg|jpeg|png)/i, message: "extension %{value} is not included in the list"}
    # validates_format_of :imagem, with: VALID_IMAGE_REGEX, message: "extension %{value} is not included in the list"
    # validates :image_url, allow_blank: true,  format:{
    #   with: %r{\.(gif|jpg|png)\Z}i,
    #   message: 'must be a URL for GIF, JPG or PNG image.'
    # }
    # validates_exclusion_of :format, in: %w( jpg avi ), message: "extension %{value} is not allowed"

      # validates :imagem, format: {
    #   with: %r{\.gif|jpeg|png}i,
    #   message: "%{value}must be a url for gif, jpg, or png image."
    # }

    # validates_attachment :imagem, :presence => true,
    # :content_type => { :content_type => "image/jpg" },
    # :size => { :in => 0..10.kilobytes}

    # path ='img_banners'
    # # => t = new_record ? :create : :update
    # before_validation(on: :create) do
    #   if !self.imagem.blank?
    #     self.imagem = upload_file(path,self.imagem)
    #   end
    # end



       #if !self.imagem.blank?    
      #  self.imagem = upload_file(path,self.imagem])
     # end 

    #  def upload_file(path, param )
    #    uploaded_io = param
    #    if !File::directory?( Rails.root.join('public',path) )
    #     Dir.mkdir( Rails.root.join('public',path), 777)
    #   end
    #   File.open(Rails.root.join('public',path, sanitize_filename(uploaded_io.original_filename.to_s )), 'wb') do |file|
    #     file.write(uploaded_io.read)
    #   end
    #   return sanitize_filename(uploaded_io.original_filename.to_s )
    # end

    # def sanitize_filename(file_name)
    #   # get only the filename, not the whole path (from IE)
    #   just_filename = File.basename(file_name)
    #   # replace all none alphanumeric, underscore or perioids with underscore
    #   just_filename.gsub(/[^\w\.\_]/,'_')
    # end

  end
