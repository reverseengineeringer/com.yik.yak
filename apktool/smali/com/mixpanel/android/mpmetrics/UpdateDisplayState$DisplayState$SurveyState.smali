.class public final Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
.super Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/mixpanel/android/mpmetrics/Survey;

.field private final b:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

.field private c:Landroid/graphics/Bitmap;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ltx;

    invoke-direct {v0}, Ltx;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-direct {p0, v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;-><init>(Ltt;)V

    .line 184
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.HIGHLIGHT_COLOR_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->d:I

    .line 185
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.ANSWERS_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->b:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    .line 187
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.BACKGROUND_COMPRESSED_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c:Landroid/graphics/Bitmap;

    .line 194
    :goto_0
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.SURVEY_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/Survey;

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    .line 195
    return-void

    .line 191
    :cond_0
    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;Ltt;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/Survey;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;-><init>(Ltt;)V

    .line 126
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    .line 127
    new-instance v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->b:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    .line 128
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->d:I

    .line 129
    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c:Landroid/graphics/Bitmap;

    .line 130
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "SurveyState"

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->d:I

    .line 138
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c:Landroid/graphics/Bitmap;

    .line 134
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->b:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    return-object v0
.end method

.method public d()Lcom/mixpanel/android/mpmetrics/Survey;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 169
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.HIGHLIGHT_COLOR_BUNDLE_KEY"

    iget v2, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->d:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.ANSWERS_BUNDLE_KEY"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->b:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    const/4 v0, 0x0

    .line 173
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 174
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 176
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 178
    :cond_0
    const-string v2, "com.mixpanel.android.mpmetrics.UpdateDisplayState.BACKGROUND_COMPRESSED_BUNDLE_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 179
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.SURVEY_BUNDLE_KEY"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 181
    return-void
.end method
