active_record_abstract_class
============================

Disallow persistence of ActiveRecord models with by including a module

Use
---

Install the gem, then `include ActiveRecordAbstractClass` in any model you wish to make abstract. Child classes are not abstract unless `ActiveRecordAbstractClass` is included in them as well.

Purpose
-------

This module can be included in ActiveRecord classes to make them non-persistable. It was created to duplicate the functionality of "abstract" classes present in other languages within the context of ActiveRecord persistence. The intended use was to allow extraction of common methods shared by several STI models in a Rails project into the base class, while making the base class very difficult to persist.

Limitations
-----------

Including this module does not prevent ambitious programmers from finding ways around it. Ruby allows one to monkey patch past the protections afforded by this gem. Not quite the same thing as a real abstract class!
