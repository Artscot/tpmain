using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(tpme.Startup))]
namespace tpme
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
