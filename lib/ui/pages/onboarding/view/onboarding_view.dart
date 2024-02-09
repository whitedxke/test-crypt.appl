import 'index.dart';

part 'components/onboarding_view.loading_indicator.part.dart';
part 'components/onboarding_view.onboarding_item.part.dart';

class OnboardingView extends StatefulWidget {
  final OnboardingProtocol _protocol;

  const OnboardingView({
    Key? key,
    required OnboardingProtocol protocol,
  })  : _protocol = protocol,
        super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0,
    );
    context.read<OnboardingBloc>().add(LoadOnboardingEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          if (state is OnboardingLoadedState) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 374.h,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        onPageChanged: (value) {
                          context
                              .read<OnboardingBloc>()
                              .add(ChangePageEvent(newIndex: value));
                        },
                        itemCount: state.onboardings.length,
                        itemBuilder: (context, index) {
                          final onboarding = state.onboardings[index];
                          final image = onboarding.getImage().orEmpty();
                          final description = onboarding.getDescription().orEmpty();
                          return _buildOnboardingItemWidget(
                            image: image,
                            description: description,
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 10.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.onboardings.length,
                            itemBuilder: (context, index) {
                              bool isLast = index == state.onboardings.length - 1.0;
                              return Padding(
                                padding: EdgeInsets.only(
                                  right: isLast ? 0.w : 8.w,
                                ),
                                child: _buildLoadingIndicatorWidget(
                                  context: context,
                                  index: index,
                                  currentIndex: state.activeDotIndex,
                                ),
                              );
                            },
                            shrinkWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 40.w,
                      top: 40.h,
                      right: 40.w,
                      bottom: ConstraintsHelper.getBottomWidgetInset(
                        inset: 16.h,
                      ),
                    ),
                    child: MaterialButtonWidget(
                      title: StringResource.onboardingContinueButtonTitleText,
                      onTap: () {
                        widget._protocol.navigateToContinue();
                      },
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

abstract class OnboardingProtocol {
  void navigateToContinue();
}
