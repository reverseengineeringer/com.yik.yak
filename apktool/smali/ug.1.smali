.class Lug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private final d:[F

.field private final e:Luh;


# direct methods
.method public constructor <init>(Luh;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lug;->a:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lug;->b:I

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lug;->c:J

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lug;->d:[F

    .line 18
    iput-object p1, p0, Lug;->e:Luh;

    .line 19
    return-void
.end method

.method private a([F)[F
    .locals 5

    .prologue
    .line 95
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lug;->d:[F

    aget v1, v1, v0

    .line 97
    iget-object v2, p0, Lug;->d:[F

    const v3, 0x3f333333    # 0.7f

    aget v4, p1, v0

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    aput v1, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lug;->d:[F

    return-object v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .prologue
    const-wide/32 v8, 0xee6b280

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 25
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0}, Lug;->a([F)[F

    move-result-object v0

    .line 26
    iget v1, p0, Lug;->b:I

    .line 28
    aget v2, v0, v5

    aget v3, v0, v5

    mul-float/2addr v2, v3

    aget v3, v0, v7

    aget v4, v0, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aget v3, v0, v6

    aget v4, v0, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 31
    iput v5, p0, Lug;->b:I

    .line 36
    aget v3, v0, v6

    const v4, 0x40f9999a    # 7.8f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    aget v3, v0, v6

    const v4, 0x413ccccd    # 11.8f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 37
    const/4 v3, -0x1

    iput v3, p0, Lug;->b:I

    .line 40
    :cond_0
    aget v3, v0, v6

    const v4, -0x3f066666    # -7.8f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    aget v0, v0, v6

    const v3, -0x3ec33333    # -11.8f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 41
    iput v7, p0, Lug;->b:I

    .line 45
    :cond_1
    const v0, 0x42735c2a    # 60.840004f

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_2

    const v0, 0x430b3d71    # 139.24f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    .line 47
    :cond_2
    iput v5, p0, Lug;->b:I

    .line 50
    :cond_3
    iget v0, p0, Lug;->b:I

    if-eq v1, v0, :cond_4

    .line 51
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lug;->c:J

    .line 57
    :cond_4
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lug;->c:J

    sub-long/2addr v0, v2

    .line 59
    iget v2, p0, Lug;->b:I

    packed-switch v2, :pswitch_data_0

    .line 86
    :cond_5
    :goto_0
    return-void

    .line 61
    :pswitch_0
    cmp-long v0, v0, v8

    if-lez v0, :cond_5

    iget v0, p0, Lug;->a:I

    if-nez v0, :cond_5

    .line 62
    sget-boolean v0, LsD;->a:Z

    .line 63
    iput v7, p0, Lug;->a:I

    goto :goto_0

    .line 69
    :pswitch_1
    cmp-long v0, v0, v8

    if-lez v0, :cond_5

    iget v0, p0, Lug;->a:I

    if-ne v0, v7, :cond_5

    .line 70
    sget-boolean v0, LsD;->a:Z

    .line 71
    iput v5, p0, Lug;->a:I

    .line 74
    iget-object v0, p0, Lug;->e:Luh;

    invoke-interface {v0}, Luh;->a()V

    goto :goto_0

    .line 78
    :pswitch_2
    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget v0, p0, Lug;->a:I

    if-eqz v0, :cond_5

    .line 79
    sget-boolean v0, LsD;->a:Z

    .line 80
    iput v5, p0, Lug;->a:I

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
