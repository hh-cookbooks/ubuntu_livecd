define :ubuntu_livecd, :dist => 'precise', :arch => 'amd64', :workdir => '/dev/shm/ubuntu_livecd' do

  package 'debootstrap'

  chroot = [params[:workdir],'chroot'].join '/'
  directory chroot { recursive true }

  execute "debootstrap --arch=#{params[:arch]} #{params[:dist]} chroot" do
    cwd params[:workdir]
  end
    
end
