control "network_check" do
    describe command('gcloud compute networks subnets describe https://www.googleapis.com/compute/v1/projects/lucky-apparatus-366518/regions/us-west1/subnetworks/subnet-01') do
      its('stdout') { should match (/ipCidrRange: 10.10.10.0\/24/) }
      its('stdout') { should match (/compute#subnetwork/) }
    end
    describe command('gcloud compute networks subnets describe https://www.googleapis.com/compute/v1/projects/lucky-apparatus-366518/regions/us-west1/subnetworks/subnet-02') do
      its('stdout') { should match (/ipCidrRange: 10.10.20.0\/24/) }
      its('stdout') { should match (/compute#subnetwork/) }
    end
    describe command('gcloud compute networks subnets describe https://www.googleapis.com/compute/v1/projects/lucky-apparatus-366518/regions/us-west1/subnetworks/subnet-03') do
      its('stdout') { should match (/ipCidrRange: 10.10.30.0\/24/) }
      its('stdout') { should match (/compute#subnetwork/) }
    end
  end