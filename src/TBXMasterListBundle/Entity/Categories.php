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
 * Categories
 *
 * @ORM\Table(name="categories", uniqueConstraints={@ORM\UniqueConstraint(name="identifier", columns={"identifier"}), @ORM\UniqueConstraint(name="PID", columns={"PID"})}, indexes={@ORM\Index(name="classification_id", columns={"classification_id"})})
 * @ORM\Entity(repositoryClass="TBXMasterListBundle\Repository\CategoriesRepository")
 */
class Categories
{
    /**
     * @var string
     *
     * @ORM\Column(name="identifier", type="string", length=256, nullable=false)
     */
    private $identifier;

    /**
     * @var string
     *
     * @ORM\Column(name="PID", type="string", length=256, nullable=true)
     */
    private $pid;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text", nullable=true)
     */
    private $description;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \TBXMasterListBundle\Entity\Classifications
     *
     * @ORM\ManyToOne(targetEntity="TBXMasterListBundle\Entity\Classifications")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="classification_id", referencedColumnName="id")
     * })
     */
    private $classification;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="TBXMasterListBundle\Entity\PermittedValues")
     * @ORM\JoinTable(name="categories_permitted_values",
     *   joinColumns={
     *     @ORM\JoinColumn(name="categories_id", referencedColumnName="id", onDelete="CASCADE")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="permitted_values_id", referencedColumnName="id", onDelete="CASCADE")
     *   }
     * )
     */
    private $values;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->values = new \Doctrine\Common\Collections\ArrayCollection();
    }

}
