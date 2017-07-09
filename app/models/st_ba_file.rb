class StBaFile < ApplicationRecord
	CERTIFICATES=['SAT', 'GCSE', 'Tahseli', 'Qudorat', 'Yos', 'Mearyi']
	LANGUAGECERTIFICATES=['Toefl', 'ielts', 'Other']
	PRIORITY=['HIGH', 'MEDIUM', 'LOW']
	mount_uploader :st_ba_cer_photo, StBaCerPhotoUploader
	mount_uploader :st_ba_cer_photo_transcript, StBaCerPhotoTranscriptUploader
	mount_uploader :st_ba_cer_extra_photo1, StBaCerExtraPhoto1Uploader
	mount_uploader :st_ba_cer_extra_photo2, StBaCerExtraPhoto2Uploader
	mount_uploader :st_ba_cer_extra_photo3, StBaCerExtraPhoto3Uploader
	mount_uploader :st_ba_cer_extra_photo4, StBaCerExtraPhoto4Uploader
	belongs_to :user
	has_many :st_wishes, dependent: :destroy
	accepts_nested_attributes_for :st_wishes, allow_destroy: true, reject_if: :wishes_rejectable?

	validate :require_one_option

	private
  def require_one_option
    errors.add(:base, "Please choose an option from Extra Certificates") if self.st_ba_cer_extra.nil?
  end

	def wishes_rejectable?(att)
		att['st_country_wish'].blank? && new_record?
	end
end
