using System;
using System.Collections.Generic;
using System.Linq;
using NHibernate;
using NHibernate.Cfg;

namespace TablePerConcreteClass
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            ISessionFactory sessionFactory = new Configuration().Configure().BuildSessionFactory();
            ISession session = sessionFactory.OpenSession();

            Console.WriteLine("Liste des joueurs :");
            IList<Player> players = session.Query<Player>().ToList();
            foreach (Player player in players)
                Console.WriteLine(player);

            Console.WriteLine("Liste des PNJ :");
            IList<NPC> npcs = session.Query<NPC>().ToList();
            foreach (NPC npc in npcs)
                Console.WriteLine(npc);
        }
    }
}
