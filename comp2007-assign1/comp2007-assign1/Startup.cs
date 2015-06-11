using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(comp2007_assign1.Startup))]
namespace comp2007_assign1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
