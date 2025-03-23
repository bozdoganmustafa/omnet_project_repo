//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package test_proj_1.simulations;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth1G;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;


network Network
{
    @display("bgb=580,381");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=106,66");
        }
        router: Router {
            @display("p=290,184");
        }
        client: StandardHost {
            @display("p=96,184");
        }
        server: StandardHost {
            @display("p=492,184");
        }
    connections:
        client.ethg++ <--> Eth1G <--> router.ethg++;
        router.ethg++ <--> Eth1G <--> server.ethg++;

}
