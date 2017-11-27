using System;
using System.Collections.Generic;
using System.Linq;
using NHibernate;
using NHibernate.Cfg;

namespace TablePerHierarchy
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            ISessionFactory sessionFactory = new Configuration().Configure().BuildSessionFactory();
            ISession session = sessionFactory.OpenSession();

            Console.WriteLine("Liste des personnages :");
            IList<Character> characters = session.Query<Character>().ToList();
            foreach (Character character in characters)
                Console.WriteLine(character);
        }
    }
}
