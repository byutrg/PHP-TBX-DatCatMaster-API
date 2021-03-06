<?php

/* 
 * Copyright (c) 2017 James Hayes <james.s.hayes@gmail.com>.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    James Hayes <james.s.hayes@gmail.com> - initial API and implementation and/or initial documentation
 */


namespace TBXMasterListBundle\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * Description of CategoriesRepository
 *
 * @author James Hayes <james.s.hayes@gmail.com>
 */
class CategoriesRepository extends EntityRepository
{
    public function findAll()
    {
        return $this->createQueryBuilder('c')
                ->select(['c'])
                ->getQuery()
                ->getResult();
    }
}
