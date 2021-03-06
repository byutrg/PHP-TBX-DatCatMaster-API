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


namespace TBXMasterListBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Classifications
 *
 * @ORM\Table(name="classifications", uniqueConstraints={@ORM\UniqueConstraint(name="classification", columns={"classification"})})
 * @ORM\Entity
 */
class Classifications
{
    /**
     * @var string
     *
     * @ORM\Column(name="classification", type="string", length=256, nullable=false)
     */
    private $classification;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;


}
