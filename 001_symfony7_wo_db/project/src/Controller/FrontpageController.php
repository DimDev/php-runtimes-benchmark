<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpKernel\Attribute\MapQueryParameter;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FrontpageController extends AbstractController
{
    #[Route('/', name: 'frontpage')]
    public function index(
        #[MapQueryParameter] string $firstName = '',
        #[MapQueryParameter] string $lastName = '',
    ): Response
    {
        return $this->render(
            'frontpage.html.twig',
            [
                'first_name' => $firstName,
                'last_name' => $lastName,
                'hrtime' => hrtime(true),
            ]
        );
    }

    #[Route('/phpinfo', name: 'phpinfo')]
    public function phpinfo(): Response
    {
        ob_start();
        phpinfo();
        $phpinfo = ob_get_contents();
        ob_clean();
        if(php_sapi_name() === 'cli') {
            return new Response("<pre>{$phpinfo}</pre>");
        }
        return new Response($phpinfo);
    }
}
