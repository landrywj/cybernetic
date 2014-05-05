set :stage, :production


server('deployer@107.170.248.49, {roles: %w{app web db}, primary: true})

