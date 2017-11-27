using System;
namespace TablePerConcreteClass
{
    public class NPC : Character
    {
        public virtual int XpValue { get; set; }

        public NPC() { }

        public override string ToString()
        {
            return string.Format("[{0} NPC: XpValue={1}]", base.ToString(), XpValue);
        }
    }
}
