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


namespace TBXMasterListBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use FOS\RestBundle\Controller\FOSRestController;
use Symfony\Component\Routing\Route;

class DefaultController extends FOSRestController
{
    public function getAction()
    {        
        $view = $this->view(null, 200)
                ->setFormat('html')
                ->setTemplate('default/index.html.twig');
        
        return $this->handleView($view);
    }
    
    public function getDatcatsAction()
    {
        $datcats = $this->getDoctrine()->getRepository(\TBXMasterListBundle\Entity\Categories::class)
                ->findAll();
        
        
        
        $view = $this->view($datcats);
        
        return $this->handleView($view);
    }
    
    public function getClassificationsAction() 
    {
        $classifications = $this->getDoctrine()->getRepository(\TBXMasterListBundle\Entity\Classifications::class)
                ->findAll();
        
        $view = $this->view($classifications);
        
        return $this->handleView($view);
        
    }
}
