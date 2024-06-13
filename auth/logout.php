<?php
session_start();
session_destroy();
echo "<script>alert('Berhasil logout dari SIBARANG!'); window.location='../index.php';</script>";