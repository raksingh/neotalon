-- Install devops-tools plugin to work with Docker/Podman, Helm, Terraform
-- and Kubectl
-- https://github.com/azratul/devops-tools.nvim

return {
	"azratul/devops-tools.nvim",
	lazy = true,
	event = "BufReadPost",
	opts = {},
	config = function()
		run_config("devops-tools")
	end,
}
