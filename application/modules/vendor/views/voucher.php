<link rel="stylesheet" href="<?= base_url('assets/bootstrap-select-1.12.1/bootstrap-select.min.css') ?>">
<div class="content orders-page">
    <table class="table">
        <thead class="blue-grey lighten-4">
            <tr>
                <th>#</th>
                <th>Voucher Code</th>
                <th>Type</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $i = 0;
            foreach ($orders as $order) {
                ?>
                <tr>
                    <td><?= $order['id'] ?></td>
                    <td><?= $order['code'] ?></td>
                    <td>Donate</td>
                </tr>
                <?php
                $i++;
            }
            ?>
        </tbody>
    </table>
</div>
<script src="<?= base_url('assets/bootstrap-select-1.12.1/js/bootstrap-select.min.js') ?>"></script>