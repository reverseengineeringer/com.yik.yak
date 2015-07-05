.class public LtG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/surveys/SurveyActivity;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, LtG;->a:Lcom/mixpanel/android/surveys/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, LtG;->a:Lcom/mixpanel/android/surveys/SurveyActivity;

    sget v1, Lrh;->com_mixpanel_android_activity_survey_id:I

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, LtG;->a:Lcom/mixpanel/android/surveys/SurveyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(Lcom/mixpanel/android/surveys/SurveyActivity;Z)Z

    .line 279
    iget-object v0, p0, LtG;->a:Lcom/mixpanel/android/surveys/SurveyActivity;

    iget-object v1, p0, LtG;->a:Lcom/mixpanel/android/surveys/SurveyActivity;

    invoke-static {v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->d(Lcom/mixpanel/android/surveys/SurveyActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(Lcom/mixpanel/android/surveys/SurveyActivity;I)V

    .line 280
    return-void
.end method
