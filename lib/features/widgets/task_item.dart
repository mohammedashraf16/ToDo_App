import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/app_colors.dart';
import 'package:todo_app/generated/assets.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.whiteColor,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54,
                  blurStyle: BlurStyle.outer,
                  offset: Offset(2, 1.8))
            ]),
        child: Slidable(
          startActionPane: ActionPane(
            extentRatio: .5,
            motion: const DrawerMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                label: "Delete",
                backgroundColor: AppColors.redColor,
                icon: Icons.delete,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
              ),
              SlidableAction(
                onPressed: (context) {},
                label: "Edit",
                backgroundColor: AppColors.primaryColor,
                icon: Icons.edit,
              )
            ],
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Container(
                  height: 80,
                  width: 4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.primaryColor)),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Task Title",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.blackColor,
                          ),
                    ),
                    Text(
                      "Task Description",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 15),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    elevation: 4,
                    shadowColor: AppColors.blackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: ImageIcon(
                  const AssetImage(
                    Assets.imagesIconCheck,
                  ),
                  color: AppColors.whiteColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ));
  }
}
