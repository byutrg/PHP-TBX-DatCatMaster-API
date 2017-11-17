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
 * PermittedValues
 *
 * @ORM\Table(name="permitted_values", uniqueConstraints={@ORM\UniqueConstraint(name="value", columns={"value"})}, indexes={@ORM\Index(name="type", columns={"type"})})
 * @ORM\Entity
 */
class PermittedValues
{
    /**
     * @var string
     *
     * @ORM\Column(name="value", type="string", length=256, nullable=false)
     */
    private $value;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \TBXMasterListBundle\Entity\ValueTypes
     *
     * @ORM\ManyToOne(targetEntity="TBXMasterListBundle\Entity\ValueTypes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="type", referencedColumnName="id")
     * })
     */
    private $type;


}
